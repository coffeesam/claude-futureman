# futureman

A Claude Code output style. It changes how Claude writes to you, not what it does.

Three rules:

1. **Bottom line up front.** The first sentence is the answer, never the setup.
2. **Plain language.** No insider shorthand. "Once it is merged", not "when it lands". Technical terms stay exact.
3. **Explicit decisions.** Anything you have to weigh is stated as `Decision | Problem | Implications (if the problem is not solved)`, with a recommendation attached.

It also asks for the why and the options before the explanation, so you are never reading mechanics you did not ask for.

## Install

```
/plugin marketplace add coffeesam/claude-futureman
/plugin install futureman@futureman
```

Then pick it in **Settings → Claude Code → Output style**, or set it directly in `~/.claude/settings.json`:

```json
{
  "outputStyle": "futureman"
}
```

A project can override the style in its own `.claude/settings.json`.

## If you already have a personal copy

Delete `~/.claude/output-styles/futureman.md` after installing the plugin. Two styles with the same name is ambiguous, and which one wins is not something you want to debug.

## Editing it

The whole style is one file: `output-styles/futureman.md`. The `name` field in its frontmatter must stay identical to the filename stem, because Claude Code can resolve a custom style by either one and a mismatch is hard to spot.

To add a phrase you want avoided, put it in the translation table under "Plain Language" with the wording you prefer instead.

## Limits

Some phrasing comes from Claude Code's own built-in prompts, which no output style can edit. The style governs everything Claude writes itself.

## License

MIT
