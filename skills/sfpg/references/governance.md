# Governance: checks and balances

Governance defines what must be controlled. In a traditional organisation it is policies, approvals, audits, compliance, risk management, access control and executive oversight. In an AI-native organisation it maps to `Guardrails.md`.

The goal is not to block work. It is to make work trustworthy. Good governance allows speed with safety.

## Three tiers

Sort every action into one of three tiers:

| Tier | Meaning | Examples |
| --- | --- | --- |
| **Allowed** | Can be done without review | Interpret a request, recommend from an approved catalogue, calculate, flag a missing requirement, suggest alternatives |
| **Requires review** | A named human approves first | Official records, waivers, exceptions to policy, commitments to customers, anything irreversible |
| **Prohibited** | Never done | Guaranteeing outcomes, inventing what does not exist, overriding mandatory rules, exposing private data, changing records without authorisation |

## Questions

- Who approves each "requires review" action, and how fast?
- How is an exception escalated, and to whom?
- How is the work audited after the fact?
- How are AI outputs evaluated before they reach a customer?

## Typical failures

- **Too tight:** everything requires review, so approvals become the bottleneck.
- **Too loose:** risky actions happen without anyone checking.
- **Unclear:** nobody knows which tier an action is in, so people either freeze or improvise.
