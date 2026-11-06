---
name: sfpg
description: Diagnoses an organisation's problem with SFPG - Structure (who owns what), Function (what can be done and how), Procedures (how work moves - empower, delegate, follow up) and Governance (what must be checked, approved or escalated) - names which kind of problem it is (structural, functional, procedural or governance) and the fix. Also designs AI-native operating models, mapping each layer to Agent.md, Skill.md, Workflow.md and Guardrails.md. Use when a team or company has dropped handoffs, unclear ownership, stalled projects, conflicting priorities, approval bottlenecks, a reorganisation, or is rolling out AI agents across the organisation. When chosen without the user asking, it classifies the problem briefly and offers the full diagnosis. Not for software or code architecture, and not for personal productivity.
license: MIT
metadata:
  author: Sam Hon
  part-of: futureman
---

# SFPG: Structure, Function, Procedures, Governance

Most organisational problems are one of four kinds. Naming the right kind stops the wrong fix, such as reorganising teams when the real gap is that nobody follows up.

| Layer | One-liner | Problem looks like |
| --- | --- | --- |
| **Structural** | Who owns what | Nobody owns it, two teams own it, one giant role does everything |
| **Functional** | What can be done, and how | Nobody has the skill, the method is unclear, quality varies |
| **Procedural** | How intent becomes accountable execution | Handoffs drop, work stalls, nobody checks the result |
| **Governance** | What must be checked, constrained, approved or escalated | Approvals block everything, or risky things go unchecked |

When describing a problem, use the adjective: "this is a procedural problem".

## First: run now, or offer?

The full diagnosis is long. Do not make the user wait for it unasked.

**Run it now** if any of these is true:
- The user's message starts with `/futureman:sfpg`.
- The user asks for an SFPG diagnosis, or a full organisational diagnosis, in their own words.
- The user said yes to your offer to run it.

**Otherwise, offer.** In two to four sentences, say which kind of problem this most likely is, and the one fix to try first. Then add one line offering the full diagnosis, for example:

> Want me to run a full SFPG diagnosis, checking structure, function, procedures and governance in turn?

Then stop. Do not start the diagnosis in the same reply.

## Method (when running)

1. **Restate the problem** in one sentence, in the organisation's own terms.
2. **Check each layer** using the questions in [references/diagnostic-questions.md](references/diagnostic-questions.md). Read that file now.
3. **Classify.** Name the primary layer, and any secondary one. Problems often look procedural but start structural: a handoff drops because nobody owns the hand-off point.
4. **Fix the primary layer first.** For a procedural problem, use [references/procedural.md](references/procedural.md). For a governance problem, or any AI agent rollout, use [references/governance.md](references/governance.md).
5. **AI-native mapping.** Only if the user is designing work for AI agents, map each layer to its file: `Agent.md` (structural), `Skill.md` (functional), `Workflow.md` (procedural), `Guardrails.md` (governance).

## Output (when running)

Start with one sentence: what kind of problem this is, and the first fix.

Then **Structural**, **Functional**, **Procedural** and **Governance**, one to three lines each: what you found, or "no issue". Mark the primary layer. For an AI agent rollout, the Governance line sorts the key actions into Allowed, Requires review and Prohibited.

End with **First fix**: one concrete change, who owns it, and how to tell it worked.

## Rules

- Use human organisational language first: owner, role, handoff, approval. Put AI terms such as routing, orchestration or toolchain underneath, only when they help.
- Use the user's facts. Where something is unknown, say what to find out.
- Plain words. Technical terms stay exact.

## Credit

From Sam Hon, "An AI-Native Operating Model for Organizations", 6 May 2026. Part of Sam Hon's futureman.
