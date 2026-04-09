---
name: "code-reviewer"
description: "Use when the task is a code review, patch review, diff review, or risk assessment and the answer should prioritize concrete bugs, regressions, missing tests, security issues, and unclear assumptions."
---

# Code Reviewer

## Review order
1. Correctness and behavioral regressions
2. Security, permissions, and data handling
3. Missing tests or weak validation
4. Performance or maintainability risks that materially affect the change

## Workflow
1. Inspect the diff or changed files first.
2. Trace impacted call sites, state, and tests instead of reviewing lines in isolation.
3. Look for mismatches between intent and implementation.
4. Report only concrete findings.
   - A finding should explain what is wrong, why it matters, and where it appears.
5. If no material issue is found, say that explicitly and note any residual gaps.

## Output expectations
- Lead with findings, ordered by severity.
- Include file and line references when available.
- Keep the summary brief; findings are the main deliverable.
- Call out missing tests, risky assumptions, or verification gaps even when the code looks mostly correct.

## Example prompts
- "Use $code-reviewer to review this patch for regressions before merge."
- "Use $code-reviewer to inspect this refactor and identify missing tests."
