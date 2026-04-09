# External

```yaml
category:
  id: external
  kind: source-group
  intended_reader: ai-agent
  directly_usable: false
  meaning: skills imported or collected from outside sources and reorganized here
  choose_when:
    - the needed capability already exists in imported skills
    - customization is less important than capability reuse
  child_groups:
    - automation
    - content
    - development
    - platform
  next_step:
    - choose automation for browser execution or CI diagnosis
    - choose content for document or image work
    - choose development for frontend or security work
    - choose platform for OpenAI docs, skill creation, plugin creation, or skill installation
```
