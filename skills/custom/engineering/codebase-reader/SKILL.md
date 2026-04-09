---
name: "codebase-reader"
description: "Use when the task requires understanding an unfamiliar repository, locating entrypoints, tracing control or data flow, mapping architecture, or explaining how modules fit together before making changes."
metadata:
  id: codebase-reader
  source_group: custom
  functional_area: engineering
  tags:
    - repository
    - architecture
    - tracing
    - onboarding
    - analysis
  best_for:
    - unfamiliar repositories
    - entrypoint tracing
    - architecture mapping
    - execution-flow explanation
  avoid_for:
    - direct feature implementation when the target is already clear
    - patch-only review
  requires_tools:
    - filesystem
    - file-reading
    - code-search
    - shell
  optional_tools:
    - git
    - test-files
  requires_network: false
  requires_auth: none
  outputs:
    - repository map
    - execution-flow summary
    - concrete file references
---

# Codebase Reader

## When to use
- Read a codebase before editing it.
- Answer questions like "where does this start?", "what updates this state?", or "how does this request flow through the system?"
- Produce onboarding notes, architecture overviews, or module maps.

## Workflow
1. Build a quick inventory.
   - Identify manifests, entrypoints, main directories, and test locations.
   - Prefer `rg --files`, `rg`, `ls`, and targeted file reads over broad dumps.
2. Trace the requested behavior through concrete symbols and files.
   - Follow imports, handlers, state stores, APIs, and side effects.
   - For large repos, cover breadth first, then drill into the critical path.
3. Separate facts from inference.
   - Facts should point to files or symbols.
   - Mark inferred behavior when it is not directly visible in code.
4. Summarize in layers.
   - Repo shape
   - Runtime entrypoints
   - Core modules and responsibilities
   - Key data/control flow
   - Open questions or snapshot limits

## Output expectations
- Cite concrete file paths when explaining behavior.
- Start with the main execution path, then add supporting details.
- Keep summaries compact; expand only where the user needs depth.
- If something is missing, say what you checked and why the answer remains uncertain.

## Example prompts
- "Use $codebase-reader to map the auth flow in this repo."
- "Use $codebase-reader to identify the startup sequence and state layer."
