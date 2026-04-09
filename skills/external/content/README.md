# Content

```yaml
category:
  id: external-content
  kind: functional-area
  source_group: external
  intended_reader: ai-agent
  directly_usable: false
  choose_when:
    - the task targets .docx fidelity
    - the task targets raster image generation or editing
```

```yaml
skills:
  - id: doc
    path: skills/external/content/doc
    summary: Work with .docx files while preserving layout and formatting fidelity.
    use_when:
      - the input is a .docx document
      - rendering fidelity matters
      - formatting must be inspected or preserved
    avoid_when:
      - the task is plain text only
      - Markdown is sufficient
    inputs:
      - .docx file
      - target edits or formatting requirements
    outputs:
      - updated .docx content
      - rendering checks
      - layout-preserving edits
    ready: yes
  - id: imagegen
    path: skills/external/content/imagegen
    summary: Generate or edit raster images such as illustrations, sprites, and mockups.
    use_when:
      - the output should be a bitmap asset
      - the task needs image generation or transformation
    avoid_when:
      - SVG or code-native rendering is a better fit
    inputs:
      - visual intent
      - reference image or prompt if available
    outputs:
      - image asset
      - image variants
      - transformed bitmap content
    ready: yes
```
