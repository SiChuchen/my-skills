---
name: "tech-researcher"
description: "Use when the task requires current technical information from official documentation or primary sources, including library behavior, API changes, version-specific guidance, product comparisons, standards, and external references."
metadata:
  id: tech-researcher
  source_group: custom
  functional_area: research
  tags:
    - research
    - documentation
    - current-info
    - versions
    - primary-sources
  best_for:
    - current API guidance
    - version-specific behavior
    - standards and release-note lookup
    - product comparison from official sources
  avoid_for:
    - questions answerable from local repository context alone
  requires_tools:
    - web-search
  optional_tools:
    - context7
    - deepwiki
    - official-doc-sites
  requires_network: true
  requires_auth: none
  outputs:
    - sourced answer
    - official references
    - version-aware recommendation
---

# Tech Researcher

## Source policy
- Prefer official docs, standards, vendor docs, release notes, and primary sources.
- For technical behavior, avoid low-signal summaries when a primary source exists.
- If the topic is time-sensitive, verify the current version, date, or release state.
- If Context7 is available, prefer it for current library and API documentation.
- If DeepWiki is available and the question is about a public GitHub repository, use it as a fast repo-specific reference, then verify important claims against primary sources when needed.

## Workflow
1. Clarify the exact question.
   - Version, product, language, platform, and date all matter.
2. Gather a small set of high-signal sources.
   - Two to four strong sources beat a long weak list.
3. Reconcile conflicts.
   - Distinguish sourced facts from your own inference.
   - Call out uncertainty instead of forcing a false conclusion.
4. Deliver a practical answer.
   - Recommendation first
   - Why it is correct
   - Links or citations
   - Tradeoffs, caveats, and next steps

## Output expectations
- Include source links when research is part of the answer.
- Use exact versions or dates when relative words like "latest" or "today" matter.
- Keep quotes short and rely on paraphrase for the rest.

## Example prompts
- "Use $tech-researcher to compare the current official guidance for these two APIs."
- "Use $tech-researcher to verify whether this library changed behavior in the latest release."
