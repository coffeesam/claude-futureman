<p align="center">
  <img src="assets/icon.png" width="128" height="128" alt="futureman logo: an italic f to the power of m">
</p>

<h1 align="center">futureman</h1>

<p align="center"><strong>Caveman talks less. futureman thinks ahead.</strong></p>

[caveman](https://github.com/juliusbrussee/caveman) made Claude cut the words. futureman cuts them and then thinks ahead: the answer comes first, in plain words, and when a question deserves more than an answer, Claude reaches for a proven framework. It tests a claim from first principles, checks a big decision against Munger's principles, or traces the knock-on effects five moves out.

futureman is a Claude Code plugin with two parts:

- **An output style** that is always on. It changes how Claude writes to you, not what it does.
- **Six framework skills** that Claude uses when your question fits one, or when you ask for one by name.

## Install

Inside Claude Code:

```
/plugin marketplace add coffeesam/claude-futureman
```

```
/plugin install futureman@futureman
```

Or from a terminal:

```bash
claude plugin marketplace add coffeesam/claude-futureman
```

```bash
claude plugin install futureman@futureman
```

To install it for a whole project, add `--scope project` to both terminal commands. That records futureman in the project's `.claude/settings.json`, so everyone who clones the repo is offered it. Put the `outputStyle` line below in that same file to turn the style on for them too.

To update later, run `claude plugin update futureman@futureman`.

The skills work as soon as the plugin is installed. To turn the output style on, pick it in **Settings → Claude Code → Output style**, or set it in `~/.claude/settings.json`:

```json
{
  "outputStyle": "futureman:futureman"
}
```

The name has two parts because Claude Code puts the plugin name in front of a plugin's styles. `"outputStyle": "futureman"` on its own doesn't select the plugin's style. Claude Code gives no warning and uses the default style.

A project can override the style in its own `.claude/settings.json`.

## The output style

Five rules:

1. **Bottom line up front.** The first sentence is the answer, never the setup.
2. **Plain language.** No insider shorthand. Write "once it is merged", not "when it lands". Technical terms stay exact.
3. **Explicit decisions.** When you have to choose something, Claude names its pick and states the choice as `Decision | Problem | Implications (if the problem is not solved)`.
4. **Definite yes or no.** When you ask a yes-or-no question, the answer starts with Yes or No. If one missing fact would flip it, Claude names that fact and gives the answer each way.
5. **New concepts explained in full (NDECAD).** When Claude explains a concept or uses a term you haven't, it covers the Name, a Description, an Example, a Comparison with something you know, and the Advantages and disadvantages. For a term in passing, that fits in a short paragraph.

It also explains why something matters, and what the options are, before it explains how it works. You don't read mechanics you didn't ask for.

futureman keeps Claude Code's built-in software engineering instructions. It changes how Claude communicates, not how it codes.

## The framework skills

Claude picks a skill on its own when your question fits it. To run one directly, type its name, for example `/futureman:munger should I take this job offer?`.

The first three are short and run straight away. The last three produce a longer analysis. When Claude picks one of those on its own, it gives you a short answer first and offers the full analysis, so you never wait for something you didn't ask for. When you call one by name, it runs straight away.

| Skill | Use it for | Ends with |
| --- | --- | --- |
| `first-principles` | Checking a claim someone made | True, false or partly true, and what to do |
| `munger` | A decision with real stakes | Yes or No |
| `mma` | Why a product isn't growing, or how strong a brand is | The weakest measure and the next move |
| `nth-order` | A decision that could reshape a market or many lives | Where the first move turns against you |
| `spinova` | Preparing a pitch, proposal or client call | Pursue or Pass, and the angle to lead with |
| `sfpg` | An organisation where work keeps getting stuck | What kind of problem it is, and the first fix |

### first-principles

Breaks a claim down to parts that can each be checked, then sorts them into four groups: universal truths (maths, physics), time-bound truths (laws, contracts, prices, which can change), failed assumptions, and data points that need more evidence. Ask "my manager says we need 99.999% uptime, is that really necessary?", and it separates the maths (about 5 minutes of downtime a year) from the belief (that customers need it). Unlike a plain fact-check, it tells you which parts could change and which are only one person's opinion. It needs a specific claim to work on. It's not meant for how-it-works technical questions.

### munger

Tests a decision against Charlie Munger's principles: invert (how would this fail?), avoid stupidity rather than chase brilliance, stay inside your circle of competence, follow the incentives, look one step further, and weigh what else the time or money could do. Ask "should we take on this client that wants 60% of our capacity?", and it answers Yes or No, gives the strongest reason, and names the facts that would change its answer. Unlike a pros-and-cons list, it never ends on "it depends". It's built to avoid big mistakes, not to find bold moves. For decisions that could affect a whole market, it offers an `nth-order` analysis at the end.

### mma

Measures a brand on three separate things: **Awareness** (people know the brand), **Marketshare** (paying or revenue-driving actions, counted), and **Mindshare** (loyalty, a ladder from trust up to preorders). Ask "lots of people know our app but few pay, why?", and it finds the weakest of the three and the one move most likely to lift it. Unlike a general marketing review, it keeps the three apart, because they often move on their own and mixing them hides the real problem. These definitions differ from common business-school usage, so every analysis starts by stating them.

### nth-order

Traces the knock-on effects of a big decision up to five levels deep, asking "and then what?" each time, and marks the level where things turn. For example, if Google blocked Apple's search ads to help Android, the first effect would look good for Android. By the fourth level, advertisers would see Google as a platform that picks winners and move their spending elsewhere, and the ad revenue that pays for Android would fall. Unlike `munger`, which looks one step ahead, it follows each path to the end. It's slower and only worth it when many people or a whole market are affected.

### spinova

Assesses a chance to serve a client, partner or employer in seven steps: Situation, Problem, Implication, Need (all from the other side's point of view), then Opportunity, Value (what you can add) and Ability (whether you have the capacity, capability and competency to deliver). Ask "I have a discovery call with a hospital about their scheduling system, how should I approach it?", and it tells you whether to pursue it and what to lead with. Unlike a sales script, it ends by checking honestly whether you can deliver. It doesn't write the proposal itself.

### sfpg

Diagnoses an organisation's problem as one of four kinds: **Structural** (who owns what), **Functional** (what can be done, and how), **Procedural** (how work moves: empower, delegate, follow up) or **Governance** (what must be checked, approved or escalated). Ask "handoffs between sales and delivery keep getting dropped", and it may find that the real gap is that nobody owns the handoff point, so reorganising the teams won't fix it. It also designs operating models for AI agents, mapping each layer to `Agent.md`, `Skill.md`, `Workflow.md` and `Guardrails.md`. It's for organisations, not for software architecture or personal productivity.

## Use with Codex and ChatGPT

The six skills also work in Codex and in the ChatGPT desktop app. Both read this repo's plugin catalog.

```bash
codex plugin marketplace add coffeesam/claude-futureman
```

```bash
codex plugin add futureman@futureman
```

In the ChatGPT desktop app, you can also add the marketplace and install futureman from the Plugins Directory.

The output style doesn't carry over, because Codex plugins have no output styles. To get the same writing rules in Codex, copy everything below the frontmatter in [`output-styles/futureman.md`](output-styles/futureman.md) into `~/.codex/AGENTS.md`.

## If you already have a personal copy

If you used a hand-copied `~/.claude/output-styles/futureman.md` before, switch `outputStyle` to `futureman:futureman` and delete the personal copy. Otherwise you keep running the old copy, and plugin updates never reach you.

## Editing and testing

The style is one file: `output-styles/futureman.md`. The `name` field in its frontmatter must match the filename stem. Claude Code can find a custom style by either one, so a mismatch is hard to spot.

To add a phrase you want avoided, put it in the translation table under "Plain Language" with the wording you prefer instead.

The version number appears in four places: `.claude-plugin/plugin.json`, twice in `.claude-plugin/marketplace.json`, and in the root `plugin.json` that Codex reads. Change all four together.

The icon's source is `assets/icon.svg`. After changing it, export a 1024 px PNG to both `assets/icon.png` and `.claude-plugin/icon.png`.

Each skill is one folder under `skills/`. Its `description` decides when Claude picks it, so test any change to it.

To run every check, use `scripts/evals.sh`. It validates the plugin, runs the skill tests in `evals/` (each test runs with and without the plugin), and checks the style with the cases in `tests/style/cases.txt`. Every run is a real model call on your account. A full run costs about $15 at list price.

## Releasing

Claude Code and Codex install from `main`, so `main` only ever holds released code. Work on a feature branch and merge it into `main` only as a release. The one exception is a change to `README.md` alone, which can go straight to `main`, because it doesn't change how the plugin behaves.

To release:

1. Bump the version in all four places and date the changelog entry.
2. Merge into `main` and create a signed tag, `vX.Y.Z`.
3. Build the packages from the tag. `git archive` leaves out `evals/`, `tests/` and `scripts/` (see `.gitattributes`):
   ```
   git archive --format=zip -o futureman-X.Y.Z.zip vX.Y.Z
   cp futureman-X.Y.Z.zip futureman-X.Y.Z.plugin
   ```
4. Publish a GitHub release for the tag with both files attached. The `.plugin` file installs in the Claude desktop app, and the `.zip` file is what OpenAI's plugin directory accepts.

## Limits

Some phrasing comes from Claude Code's own built-in prompts, which no output style can edit. The style governs everything Claude writes itself.

## Credits

Created by Sam Hon ([@coffeesam](https://github.com/coffeesam)).

- `munger` is based on Charlie Munger's principles, as collected in *Poor Charlie's Almanack*.
- The first four steps of `spinova` (Situation, Problem, Implication, Need) come from Neil Rackham's *SPIN Selling*. Opportunity, Value and Ability are Sam Hon's extension.
- `sfpg` comes from Sam Hon, "An AI-Native Operating Model for Organizations", 6 May 2026.
- The four-category sort in `first-principles`, the MMA definitions, NDECAD and the definite yes-or-no rule are Sam Hon's.

The name is a nod to [caveman](https://github.com/juliusbrussee/caveman), the Claude Code plugin that makes Claude talk like a caveman. Where caveman strips language down, futureman thinks forward: it puts a plain, simple answer first, and reaches for mental models and decision-making frameworks when a question deserves more than an answer.

## License

MIT. See [LICENSE](LICENSE).
