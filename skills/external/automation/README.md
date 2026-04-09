# Automation

```yaml
category:
  id: external-automation
  kind: functional-area
  source_group: external
  intended_reader: ai-agent
  directly_usable: false
  choose_when:
    - the task requires execution in a browser
    - the task requires CI diagnosis instead of only local reasoning
```

```yaml
skills:
  - id: gh-fix-ci
    path: skills/external/automation/gh-fix-ci
    summary: Investigate failing GitHub PR checks and GitHub Actions runs.
    use_when:
      - CI failures are GitHub-based
      - remote logs or check states must be inspected
    avoid_when:
      - the CI system is not GitHub-based
      - only local code changes are needed
    inputs:
      - repository or PR context
      - failing check or workflow reference
    outputs:
      - failure summary
      - likely root cause
      - fix direction
    ready: yes
  - id: playwright
    path: skills/external/automation/playwright
    summary: Automate a real browser for UI verification and interaction.
    use_when:
      - a real browser session is required
      - the task needs screenshots, form interaction, or UI flow validation
    avoid_when:
      - the task is backend-only
      - browser execution is unnecessary
    inputs:
      - target URL or UI flow
    outputs:
      - browser observations
      - screenshots or snapshots
      - verified UI behavior
    ready: yes
```
