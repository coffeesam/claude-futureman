# Changelog

## 2.1.1 (2026-11-09)

### Changed

- New descriptions that lead with the hook: "Caveman talks less. futureman thinks ahead." The Codex description now describes the skills only, since Codex doesn't get the output style.

## 2.1.0 (2026-11-09)

### Added

- Codex and ChatGPT desktop support for the six skills: a portable `plugin.json` at the repo root, with the icon in `assets/`. The output style stays Claude Code only.

### Fixed

- `sfpg` now ships its three reference files (diagnostic questions, the procedural formula and the governance tiers). A `.gitignore` rule meant for a private top-level folder had kept them out of 2.0.0.

## 2.0.0 (2026-11-09)

futureman is now an output style plus six framework skills.

### Added

- Six skills, which Claude uses when a question fits or when you call them as `/futureman:<name>`:
  - `first-principles`: sorts a claim into universal truths, time-bound truths, failed assumptions and data points.
  - `munger`: tests a decision against Charlie Munger's principles and answers Yes or No.
  - `mma`: measures a brand on Awareness, Marketshare and Mindshare.
  - `nth-order`: traces a big decision's knock-on effects up to five levels.
  - `spinova`: assesses a client opportunity, from their situation to your ability to deliver.
  - `sfpg`: diagnoses an organisation's problem as structural, functional, procedural or governance.
- The three long skills (`nth-order`, `spinova`, `sfpg`) give a short answer and offer the full analysis when Claude picks them on its own. They run straight away when you call them by name.
- Output style: answers to yes-or-no questions start with Yes or No.
- Output style: new concepts are explained with NDECAD (Name, Description, Example, Comparison, Advantages and disadvantages).
- Tests: skill evals in `evals/`, style checks in `tests/style/`, and `scripts/evals.sh` to run them all.

### Changed

- Output style: Claude adds a decision block only when you have to choose something, and names its pick first. Explanations and factual answers no longer end with one.
- Output style: simple questions get a short paragraph, with at most one short list and no headers.

## 1.0.1 (2026-11-06)

### Fixed

- The README now gives the correct style name, `futureman:futureman`. The plain name `futureman` doesn't select a plugin's style.
- The style keeps Claude Code's built-in software engineering instructions (`keep-coding-instructions: true`).

## 1.0.0 (2026-10-27)

- First release: the futureman output style as a Claude Code plugin. Bottom line up front, plain language, and explicit decisions.
