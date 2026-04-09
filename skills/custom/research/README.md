# Research

```yaml
category:
  id: custom-research
  kind: functional-area
  source_group: custom
  intended_reader: ai-agent
  directly_usable: false
  choose_when:
    - the task depends on current external information
    - the answer should be grounded in official or primary sources
```

```yaml
skills:
  - id: tech-researcher
    path: skills/custom/research/tech-researcher
    summary: Research current APIs, libraries, standards, and official guidance.
    use_when:
      - the task depends on current documentation
      - the task depends on version-specific behavior
      - the answer should cite primary sources
    avoid_when:
      - the answer is already available from local code or stable prior context
    inputs:
      - target technology
      - specific research question
    outputs:
      - sourced answer
      - current guidance summary
      - decision-relevant references
    ready: yes
```
