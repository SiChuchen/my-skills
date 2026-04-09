# Platform

```yaml
category:
  id: external-platform
  kind: functional-area
  source_group: external
  intended_reader: ai-agent
  directly_usable: false
  choose_when:
    - the task is about OpenAI platform docs
    - the task is about creating or installing skills or plugins
```

```yaml
skills:
  - id: openai-docs
    path: skills/external/platform/openai-docs
    summary: Answer OpenAI platform questions using official documentation.
    use_when:
      - the task is about OpenAI APIs, models, or upgrade guidance
      - official documentation is required
    avoid_when:
      - the task is unrelated to OpenAI
    inputs:
      - OpenAI question
      - product, API, or model context if known
    outputs:
      - doc-grounded answer
      - official references
      - current usage guidance
    ready: yes
  - id: plugin-creator
    path: skills/external/platform/plugin-creator
    summary: Create a plugin scaffold with manifest and baseline structure.
    use_when:
      - a new plugin must be created
      - plugin metadata and layout must be initialized
    avoid_when:
      - no plugin work is involved
    inputs:
      - plugin name
      - target structure requirements
    outputs:
      - plugin scaffold
      - manifest file
      - baseline directories
    ready: yes
  - id: skill-creator
    path: skills/external/platform/skill-creator
    summary: Create a new skill scaffold and required skill metadata.
    use_when:
      - a new skill must be created
      - a skill template or starter structure is needed
    avoid_when:
      - only small edits to an existing skill are needed
    inputs:
      - skill name
      - intended purpose
    outputs:
      - skill scaffold
      - starter metadata
      - initial skill files
    ready: yes
  - id: skill-installer
    path: skills/external/platform/skill-installer
    summary: Install skills from external sources or enumerate installable skills.
    use_when:
      - a skill must be installed from elsewhere
      - available install targets must be listed
    avoid_when:
      - the required skill already exists locally
    inputs:
      - source repository or installation target
    outputs:
      - installed skill
      - installation guidance
      - available skill listing
    ready: yes
```
