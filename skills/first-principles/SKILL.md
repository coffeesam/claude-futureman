---
name: first-principles
description: Breaks a claim down to first principles and sorts each part into universal truths, time-bound truths (laws, regulation, compliance, contracts), failed assumptions, and data points that need more evidence. Use when the user doubts a business, legal, policy, cost or target claim someone has made, such as "my manager says we need 99.999% uptime, is that really necessary?" or "do we really have to host in the EU because of GDPR?". Not for ordinary technical how-it-works questions, such as whether git rebase rewrites history.
license: MIT
metadata:
  author: Sam Hon
  part-of: futureman
---

# First principles

Take the claim apart until you reach parts that can be checked on their own. Then say which parts hold up and which do not. The user should end up knowing what is fixed, what could change, what is wrong, and what is still unknown.

## Method

1. **State the claim** in one sentence, in plain words. If the user's wording hides two claims, split them.
2. **Break it down.** List the facts, rules and beliefs the claim depends on. Keep going until each part is either checkable or clearly a belief.
3. **Sort each part** into one of the categories below. Only use the categories that fit. Never show an empty one.
4. **Rebuild.** Using only the parts that held up, say what is actually true, and what that means for the user's decision.

## Categories

**Universal truth.** Physical constants, mathematics, logic. It does not change with time, place or opinion.
Example: 99.999% uptime allows about 5.3 minutes of downtime a year.

**Time-bound truth.** True now, but it can change: laws, regulation, compliance obligations, liabilities, contracts, published prices, current platform limits. Always say **where** and **as of when** it applies. Flag it if the user should confirm it with a lawyer, an accountant or the official source.
Example: under GDPR, personal data may leave the EEA only on a lawful basis for transfer, such as an adequacy decision or standard contractual clauses.

**Failed assumption.** A belief that does not survive the breakdown. Say exactly why it fails, and what the true version is.
Example: "GDPR means we must host in the EU." It does not. It restricts transfers out of the EEA. It does not require EU hosting.

**Data point.** An opinion, an observation, a single anecdote, one customer's request, one benchmark. Useful, but not enough on its own to draw a conclusion. Say what further data would settle it.
Example: "Our biggest customer says they need EU hosting." One customer's view. Check their contract, and ask whether other customers share it.

## Output

Lead with the answer: is the claim true, false, or partly true?

Then give the breakdown, grouped by category, in this order: universal truths, time-bound truths, failed assumptions, data points. One line per part, with the reason.

End with **What this means**: one to three sentences on what the user should do or decide now.

Keep it short. A simple claim needs a few lines, not every category.

## Rules

- Never present a time-bound truth as universal. Laws and limits change.
- Never present a data point as a conclusion.
- If you are not sure whether something is true, say so and put it under data points. Do not guess.
- Technical terms stay exact. Plain words for everything else.

## Credit

First-principles reasoning is an old idea, going back to Aristotle. The four-category sorting used here is from Sam Hon's futureman.
