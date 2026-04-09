---
name: "code-implementer"
description: "Use when the task requires changing code, fixing bugs, refactoring, adding tests, or implementing features while following repository conventions, minimizing risk, and validating the result."
---

# Code Implementer

## When to use
- Implement a feature, bug fix, refactor, or migration.
- Add or adjust tests, docs, config, or scripts as part of a change.
- Continue an in-progress edit without disturbing unrelated work.

## Workflow
1. Read first.
   - Inspect nearby code, conventions, and existing tests before editing.
   - Prefer the narrowest write set that fully solves the task.
2. Make the smallest complete change.
   - Preserve naming, file layout, and established patterns unless the task requires a broader shift.
   - Do not revert unrelated user changes.
3. Validate locally.
   - Run the smallest useful verification first: targeted tests, lint, typecheck, or build.
   - Broaden validation when the change affects shared paths.
4. Report the outcome.
   - State what changed, how it was verified, and any remaining risk if validation was limited.

## Guardrails
- Do not stop at analysis when the task clearly calls for code changes.
- Prefer repo-native tools and scripts over ad hoc workarounds.
- Avoid speculative refactors that expand scope without clear payoff.
- If validation cannot run, say so explicitly.

## Example prompts
- "Use $code-implementer to add this endpoint and update the tests."
- "Use $code-implementer to refactor this module without changing behavior."
