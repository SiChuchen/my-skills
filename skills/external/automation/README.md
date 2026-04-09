# Automation

## AI Summary

- source_group: `external`
- area: `automation`
- choose_this_area_when: the task needs a tool to execute flows instead of only reasoning about them

## Skill Index

### `gh-fix-ci`

- path: `skills/external/automation/gh-fix-ci`
- use_when: 需要检查 GitHub PR checks、GitHub Actions、失败日志和失败步骤
- avoid_when: CI 不在 GitHub，或者任务只需要本地修代码不需要查线上执行结果
- ready: yes

### `playwright`

- path: `skills/external/automation/playwright`
- use_when: 需要真实浏览器操作、页面验证、截图、表单填写、UI 流程调试
- avoid_when: 不需要浏览器交互，或者任务是纯后端/纯文本
- ready: yes
