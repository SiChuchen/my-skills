# Engineering

```yaml
category:
  id: custom-engineering
  kind: functional-area
  source_group: custom
  intended_reader: ai-agent
  directly_usable: false
  choose_when:
    - the task is about understanding code
    - the task is about implementing code
    - the task is about reviewing code
```

```yaml
skills:
  - id: codebase-reader
    path: skills/custom/engineering/codebase-reader
    summary: Understand an unfamiliar repository before making changes.
    use_when:
      - repository structure is unclear
      - execution flow must be mapped first
      - architecture explanation is required
    avoid_when:
      - direct implementation can start immediately
    inputs:
      - repository path
      - specific area or question if available
    outputs:
      - entrypoint map
      - module relationships
      - execution-flow summary
    ready: yes
  - id: code-implementer
    path: skills/custom/engineering/code-implementer
    summary: Make code changes and validate them with the smallest useful checks.
    use_when:
      - a feature must be added
      - a bug must be fixed
      - tests or verification must be updated
    avoid_when:
      - the repository is still poorly understood
      - the main task is review instead of implementation
    inputs:
      - target repository
      - user goal or bug description
    outputs:
      - code changes
      - minimal verification
      - concise implementation summary
    ready: yes
  - id: code-reviewer
    path: skills/custom/engineering/code-reviewer
    summary: Review a change set for correctness, regressions, and missing coverage.
    use_when:
      - a patch, diff, or PR needs review
      - the user asks for risk assessment
    avoid_when:
      - there is no concrete change set to inspect
      - the task is direct implementation
    inputs:
      - diff, patch, commit, or changed files
    outputs:
      - prioritized findings
      - open questions
      - residual risks
    ready: yes
```
