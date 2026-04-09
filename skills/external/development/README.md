# Development

```yaml
category:
  id: external-development
  kind: functional-area
  source_group: external
  intended_reader: ai-agent
  directly_usable: false
  choose_when:
    - the task is specialized development work
    - the task is UI-heavy or security-focused
```

```yaml
skills:
  - id: frontend-skill
    path: skills/external/development/frontend-skill
    summary: Build frontend UI with stronger visual direction, layout, and interaction quality.
    use_when:
      - the task is frontend implementation
      - the task needs visual or interaction design guidance
    avoid_when:
      - the task is not interface-related
      - the UI change is trivial and does not need design-oriented guidance
    inputs:
      - frontend codebase
      - page or component goal
    outputs:
      - UI implementation
      - styling direction
      - interaction refinements
    ready: yes
  - id: security-best-practices
    path: skills/external/development/security-best-practices
    summary: Apply security review and secure-by-default implementation guidance.
    use_when:
      - the task explicitly requests security review
      - the task needs language- or framework-specific security guidance
    avoid_when:
      - the task is a normal implementation request without a security focus
    inputs:
      - code or framework context
      - security objective if provided
    outputs:
      - security findings
      - best-practice recommendations
      - safer implementation guidance
    ready: yes
```
