---
name: nth-order
description: Traces the knock-on effects of a decision with a large blast radius, up to five levels deep ("and then what?" asked five times), to find where an attractive first move turns against the decision-maker. Use when a decision could reshape a company's strategy, a market, a platform and its ecosystem, a public policy, or many people's lives, such as cutting prices to win a market, blocking a competitor, or changing a policy many depend on. When chosen without the user asking, it answers first and offers the analysis rather than running it. Not for personal choices, small technical decisions, or checking whether a claim is true.
license: MIT
metadata:
  author: Sam Hon
  part-of: futureman
---

# Nth-order thinking

Second-order thinking asks "and then what?" once. Nth-order thinking keeps asking, usually to the fifth order, along each path that matters. It is for decisions where the first effect looks good but later effects can reverse it.

## First: run now, or offer?

This analysis is long. Do not make the user wait for it unasked.

**Run it now** if any of these is true:
- The user's message starts with `/futureman:nth-order`.
- The user asks for an Nth-order, multi-level, or "and then what" analysis in their own words.
- The user said yes to your offer to run it.

**Otherwise, offer.** Answer the user's question directly in two to four sentences, with a definite view. Then add one line offering the analysis, for example:

> This decision has a large blast radius. Want me to run an Nth-order analysis, tracing the knock-on effects up to five levels?

Then stop. Do not start the analysis in the same reply.

## Method (when running)

1. **State the decision** in one sentence, and who makes it.
2. **Pick the paths.** Choose the two or three groups most affected: for example customers, competitors, partners, regulators, the decision-maker's own other businesses.
3. **Trace each path** from 1st to 5th order. Each step is one line, caused by the step before it. Stop a path early if it stops changing anything.
4. **Find the turn.** Mark the order at which a path turns against the decision-maker, if it does.
5. **Verdict.** A definite yes or no, based on where the paths end, not where they start.

## Output (when running)

Start with the verdict and the one reason, in one sentence.

Then each path as a numbered chain:

**Path: advertisers**
1. First-order effect
2. Second-order effect
3. ...

Mark the turning point with **(turns here)**.

End with **What would change the verdict**: the one assumption that, if wrong, flips the answer.

## Example

Should Google block Apple's search ads for the iPhone, to help Android grow?
- 1st order: fewer iPhone ads on Google, so Android looks stronger.
- 2nd: Apple moves its ad spend to other platforms.
- 3rd: advertisers see Google as a platform that picks winners, and hedge their spend.
- 4th: Google's ad revenue falls, and competitors' ad businesses grow. **(turns here)**
- 5th: less money to fund Android, the thing the move was meant to help.

Verdict: **No.** The move would damage the ad business that pays for Android.

## Rules

- Each step must follow from the one before. Say "likely" or "possibly" where a link is uncertain. Do not present a guess as certain.
- Use the user's facts. Do not invent numbers.
- Plain words. Technical terms stay exact.

## Credit

Extends Charlie Munger's second-order thinking to multiple levels. The Nth-order method and the Google example are Sam Hon's. Part of Sam Hon's futureman.
