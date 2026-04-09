# Repository Instructions For AI Skill Uploads

This repository is a machine-routable skill library. When adding, importing, or updating skills, follow the rules below exactly.

## Repository Goal

- Keep the library easy for an AI agent to route.
- Keep skill discovery predictable from directory layout and front matter alone.
- Avoid dumping unrelated skills into the wrong category.

## Core Classification Rule

Every new skill must be classified in two steps:

1. Choose the `source_group`
2. Choose the `functional_area`

### Allowed source groups

- `custom`
  Use for skills maintained and intentionally tuned in this repository.
- `external`
  Use for skills imported, adapted, or reorganized from outside sources.

### Current functional areas

- Under `skills/custom/`
  - `engineering`
  - `research`
- Under `skills/external/`
  - `automation`
  - `content`
  - `development`
  - `platform`

Do not invent a new functional area unless the skill clearly does not fit any existing area.

If a new functional area is truly required, you must also:

- create the new category directory
- add a category `README.md`
- update [README.md](/home/ubuntu/cc-public/my-skills/README.md)
- update [skills/README.md](/home/ubuntu/cc-public/my-skills/skills/README.md)
- update the parent source-group `README.md`

## Required Directory Shape

Every usable skill must live in a leaf directory like this:

```text
skills/<source_group>/<functional_area>/<skill-id>/
  SKILL.md
```

Optional sibling content is allowed when needed:

- `agents/`
- `scripts/`
- `references/`
- `assets/`
- `LICENSE.txt`
- `NOTICE.txt`

Do not place a usable skill directly under `skills/`, `skills/custom/`, or `skills/external/`.

## Naming Rules

- Directory names must use `kebab-case`
- `metadata.id` must exactly match the leaf directory name
- `metadata.source_group` must match the containing source-group directory
- `metadata.functional_area` must match the containing functional-area directory

## Required SKILL.md Front Matter

Every leaf `SKILL.md` must start with valid YAML front matter.

Minimum required fields:

```yaml
---
name: skill-name
description: One-sentence trigger description.
metadata:
  id: skill-name
  source_group: custom
  functional_area: engineering
  tags:
    - tag
  best_for:
    - task type
  avoid_for:
    - non-matching task type
  requires_tools:
    - required capability
  optional_tools:
    - optional capability
  requires_network: task-dependent
  requires_auth: none
  outputs:
    - expected result
---
```

Rules:

- Keep `description` short and trigger-oriented
- Keep `best_for` and `avoid_for` concrete
- `requires_tools` should list capabilities actually needed to execute the skill
- `optional_tools` should list helpful but non-blocking capabilities
- `outputs` should describe what an agent should expect to produce

## Required Documentation Updates

When adding a new skill, you must update all relevant routing docs:

- add or update the skill entry in [README.md](/home/ubuntu/cc-public/my-skills/README.md)
- update the relevant category `README.md`
- if the source group or functional area changes, update the parent `README.md` files too

If you add a new functional area, update every affected index file in the same change.

## Rules For Imported External Skills

When importing an external skill:

- place it under `skills/external/`
- preserve the original skill body unless adaptation is needed for local routing
- preserve upstream `LICENSE.txt` or `NOTICE.txt` if present
- keep bundled `scripts/`, `references/`, and `assets/` when they are part of the skill
- add local front matter metadata even if the upstream skill did not have it

Do not strip licensing or attribution files from imported skills.

## Rules For Custom Skills

When adding a custom skill:

- place it under `skills/custom/`
- keep the workflow concise
- optimize for agent routing first, prose second
- prefer stable, reusable instructions over one-off task notes

## Quality Bar Before Commit

Before committing a new or updated skill, verify all of the following:

- the directory is placed under the correct `source_group` and `functional_area`
- the leaf directory name matches `metadata.id`
- the `SKILL.md` front matter is valid YAML
- the root README skill index includes the skill
- the category README includes the skill
- no transient files are included
- no `__pycache__` or generated junk is included
- imported licenses and notices are preserved when applicable

## Do Not Do These Things

- do not add a skill without updating the routing README files
- do not create a new category just because the current one is imperfect
- do not mix multiple unrelated skills into one leaf directory
- do not use human-only prose when structured metadata can express the same routing decision
- do not remove upstream license files from imported skills
- do not break existing path-based routing by renaming a skill without updating all references

## Preferred Contribution Pattern

For a normal skill addition, the expected change set is:

1. create the leaf skill directory
2. add `SKILL.md` with complete front matter
3. add any needed `agents/`, `scripts/`, `references/`, or `assets/`
4. update the relevant category `README.md`
5. update the root [README.md](/home/ubuntu/cc-public/my-skills/README.md)
6. verify that routing still works by path and metadata
