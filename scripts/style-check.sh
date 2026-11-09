#!/usr/bin/env bash
# Runs tests/style/cases.txt against the futureman output style.
#
# Usage: scripts/style-check.sh [runs-per-case]   (default 3)
#        ONLY=<name-prefix> scripts/style-check.sh   runs only matching cases
#
# Each run is a real model call on your account. Exit code 1 if any check fails.
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
RUNS="${1:-3}"
CASES="$ROOT/tests/style/cases.txt"
OUT="$(mktemp -d)"

# A plugin's output style is namespaced as <plugin>:<style>.
SETTINGS='{"outputStyle":"futureman:futureman"}'

# Shared checks, applied to every reply. [’'] matches straight and curly apostrophes.
BANNED='when it lands|open questions|TBD on|unblocks (the|this|that|them|us|you)|take this offline|circle back|net-net|happy path|bake (this|it) in'
NARRATED_OPENING='^(let me|i[’'"'"']ll|i will|sure[,!]|great[,!]|okay[,!]|ok[,!]|certainly)'

pass=0; fail=0

check() { # $1 label, $2 must|mustnot, $3 regex, $4 file
  local found=0
  grep -Eiq -- "$3" "$4" && found=1
  if { [ "$2" = must ] && [ $found = 1 ]; } || { [ "$2" = mustnot ] && [ $found = 0 ]; }; then
    return 0
  fi
  echo "    FAIL $1: $2 /$3/"
  return 1
}

run_case() { # $1 block file
  local name prompt
  name="$(sed -n 's/^name: //p' "$1")"
  prompt="$(sed -n 's/^prompt: //p' "$1")"
  for r in $(seq 1 "$RUNS"); do
    local reply="$OUT/$name.$r.txt" ok=1 code=0
    ( cd "$OUT" && claude -p --plugin-dir "$ROOT" --settings "$SETTINGS" "$prompt" ) > "$reply" 2> "$reply.err" || code=$?
    if [ $code != 0 ]; then
      echo "    ERROR claude exited $code (see $reply.err)"; ok=0
    elif ! grep -q '[^[:space:]]' "$reply"; then
      echo "    ERROR empty reply"; ok=0
    else
      grep -m1 '[^[:space:]]' "$reply" > "$reply.first"
      check banned-phrases mustnot "$BANNED" "$reply" || ok=0
      check narrated-opening mustnot "$NARRATED_OPENING" "$reply.first" || ok=0
      while IFS= read -r line; do
        case "$line" in
          must:\ *)     check must     must    "${line#must: }"     "$reply"       || ok=0 ;;
          mustnot:\ *)  check mustnot  mustnot "${line#mustnot: }"  "$reply"       || ok=0 ;;
          first:\ *)    check first    must    "${line#first: }"    "$reply.first" || ok=0 ;;
          maxwords:\ *)
            local words; words=$(wc -w < "$reply" | tr -d ' ')
            if [ "$words" -gt "${line#maxwords: }" ]; then
              echo "    FAIL maxwords: $words words, limit ${line#maxwords: }"; ok=0
            fi ;;
        esac
      done < "$1"
    fi
    if [ $ok = 1 ]; then echo "PASS $name (run $r)"; pass=$((pass+1));
    else echo "FAIL $name (run $r)  reply: $reply"; fail=$((fail+1)); fi
  done
}

# Split the cases file into blocks, skipping comments.
grep -v '^#' "$CASES" | awk -v d="$OUT" 'BEGIN{n=0; f=d"/block0"} /^%%$/{n++; f=d"/block"n; next} {print > f}'
for b in "$OUT"/block*; do
  grep -q "^name: ${ONLY:-}" "$b" && run_case "$b"
done

echo
echo "style: $pass passed, $fail failed. Replies kept in $OUT"
[ $fail = 0 ]
