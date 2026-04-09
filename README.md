# Skills Library

```yaml
catalog:
  kind: skill-library
  intended_reader: ai-agent
  primary_goal: route a task to the most relevant reusable skill
  contribution_contract: AGENTS.md
  usable_unit: leaf directory containing SKILL.md
  non_usable_units:
    - repository root
    - grouping directories that only contain README.md
  source_groups:
    custom: skills maintained and tuned in this repository
    external: skills imported or collected from outside sources
  routing_order:
    - choose source_group
    - choose functional_area
    - choose skill by use_when and avoid_when
    - read target SKILL.md before execution
  readiness_rule: a listed skill is structurally usable, but actual execution still depends on tool availability in the target runtime
```

```yaml
directory_map:
  - skills/custom/engineering
  - skills/custom/research
  - skills/external/automation
  - skills/external/content
  - skills/external/development
  - skills/external/platform
```

```yaml
leaf_skill_metadata:
  location: front matter at the top of each leaf SKILL.md
  parse_order:
    - metadata.id
    - metadata.source_group
    - metadata.functional_area
    - metadata.tags
    - metadata.best_for
    - metadata.avoid_for
    - metadata.requires_tools
    - metadata.optional_tools
    - metadata.requires_network
    - metadata.requires_auth
    - metadata.outputs
  usage_rule:
    - parse front matter first for routing and feasibility
    - read the rest of SKILL.md only after the skill is selected
  field_notes:
    requires_network:
      - false
      - true
      - task-dependent
    requires_auth:
      - none
      - github-cli
      - task-dependent
      - OPENAI_API_KEY-if-cli-fallback
```

```yaml
skills:
  - id: codebase-reader
    source_group: custom
    functional_area: engineering
    path: skills/custom/engineering/codebase-reader
    summary: Understand an unfamiliar codebase before making changes.
    use_when:
      - the task requires architecture mapping
      - the task requires tracing entrypoints, modules, or execution flow
      - the next step is understanding the repository, not editing it yet
    avoid_when:
      - the implementation target is already clear
      - the main task is direct code editing
    readiness: usable_if_referenced_tools_exist
  - id: code-implementer
    source_group: custom
    functional_area: engineering
    path: skills/custom/engineering/code-implementer
    summary: Implement code changes safely and validate the smallest useful outcome.
    use_when:
      - the task is to add a feature
      - the task is to fix a bug
      - the task is to add or update tests
    avoid_when:
      - the main need is repository understanding first
      - the main need is review rather than implementation
    readiness: usable_if_referenced_tools_exist
  - id: code-reviewer
    source_group: custom
    functional_area: engineering
    path: skills/custom/engineering/code-reviewer
    summary: Review changes for bugs, regressions, security issues, and missing tests.
    use_when:
      - the task is to review a diff or patch
      - the task is to identify risk, regression, or missing coverage
    avoid_when:
      - there is no concrete change set to review
      - the main task is to implement code instead
    readiness: usable_if_referenced_tools_exist
  - id: tech-researcher
    source_group: custom
    functional_area: research
    path: skills/custom/research/tech-researcher
    summary: Look up current official technical guidance and primary-source references.
    use_when:
      - the task needs current docs or version-specific behavior
      - the task depends on external official guidance
    avoid_when:
      - the answer can be derived from local repository context alone
    readiness: usable_if_referenced_tools_exist
  - id: gh-fix-ci
    source_group: external
    functional_area: automation
    path: skills/external/automation/gh-fix-ci
    summary: Investigate failing GitHub PR checks or GitHub Actions workflows.
    use_when:
      - the task involves GitHub checks, GitHub Actions, or PR status failures
      - the task requires reading CI logs and identifying failing steps
    avoid_when:
      - the CI system is not GitHub-based
      - the user only wants local debugging without remote CI investigation
    readiness: usable_if_referenced_tools_exist
  - id: playwright
    source_group: external
    functional_area: automation
    path: skills/external/automation/playwright
    summary: Use a real browser for UI automation, verification, screenshots, and flow debugging.
    use_when:
      - the task needs browser automation
      - the task needs UI interaction, screenshots, or form submission
    avoid_when:
      - no real browser interaction is needed
    readiness: usable_if_referenced_tools_exist
  - id: doc
    source_group: external
    functional_area: content
    path: skills/external/content/doc
    summary: Edit or validate .docx documents while preserving formatting fidelity.
    use_when:
      - the task targets a .docx file
      - layout fidelity or rendering validation matters
    avoid_when:
      - the task is plain text or Markdown only
    readiness: usable_if_referenced_tools_exist
  - id: imagegen
    source_group: external
    functional_area: content
    path: skills/external/content/imagegen
    summary: Generate or edit raster images such as illustrations, textures, and mockups.
    use_when:
      - the task needs bitmap image generation or editing
      - the output is a PNG-like asset rather than code-native UI
    avoid_when:
      - the task is better served by editing SVG, HTML/CSS, or code-native visuals
    readiness: usable_if_referenced_tools_exist
  - id: frontend-skill
    source_group: external
    functional_area: development
    path: skills/external/development/frontend-skill
    summary: Build or refine frontend UI with deliberate visual direction and interaction design.
    use_when:
      - the task is frontend UI implementation
      - the task requires stronger visual structure, layout, or motion
    avoid_when:
      - the task is not interface-related
    readiness: usable_if_referenced_tools_exist
  - id: security-best-practices
    source_group: external
    functional_area: development
    path: skills/external/development/security-best-practices
    summary: Apply secure-by-default review and implementation guidance.
    use_when:
      - the task explicitly asks for a security review
      - the task requires framework- or language-specific security guidance
    avoid_when:
      - the task is a standard implementation or general review without a security focus
    readiness: usable_if_referenced_tools_exist
  - id: openai-docs
    source_group: external
    functional_area: platform
    path: skills/external/platform/openai-docs
    summary: Route OpenAI product and API questions through official documentation.
    use_when:
      - the task is about OpenAI models, APIs, or platform behavior
      - the answer should be grounded in official OpenAI sources
    avoid_when:
      - the task is unrelated to OpenAI
    readiness: usable_if_referenced_tools_exist
  - id: plugin-creator
    source_group: external
    functional_area: platform
    path: skills/external/platform/plugin-creator
    summary: Create a plugin skeleton, manifest, and baseline structure.
    use_when:
      - the task is to create a new plugin
      - the task needs plugin metadata or directory scaffolding
    avoid_when:
      - no plugin creation is involved
    readiness: usable_if_referenced_tools_exist
  - id: skill-creator
    source_group: external
    functional_area: platform
    path: skills/external/platform/skill-creator
    summary: Create a new skill skeleton and fill in required skill metadata.
    use_when:
      - the task is to create a new skill
      - the task needs skill initialization and structure generation
    avoid_when:
      - the task only needs small edits to an existing skill
    readiness: usable_if_referenced_tools_exist
  - id: skill-installer
    source_group: external
    functional_area: platform
    path: skills/external/platform/skill-installer
    summary: Install skills from external sources or enumerate installable skills.
    use_when:
      - the task is to install a skill from another source
      - the task is to discover what skills are available for installation
    avoid_when:
      - the required skill already exists in this repository
    readiness: usable_if_referenced_tools_exist
```
