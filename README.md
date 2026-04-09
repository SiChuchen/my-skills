# Skills Library

## AI Summary

- repository_type: reusable skill library
- purpose: help an agent quickly discover whether a usable skill exists for the current task
- selection_unit: only a leaf directory that contains `SKILL.md` is a directly usable skill
- navigation_unit: directories that only contain `README.md` are classification layers
- source_groups:
  - `custom`: skills maintained and tuned in this repository
  - `external`: skills collected from external sources and reorganized here
- readiness_rule: all listed leaf skills are structurally usable; runtime availability still depends on the target environment exposing the tools referenced by that skill

## Selection Flow

1. Match the task to a source group: `custom` or `external`
2. Match the task to a functional area
3. Pick a leaf skill by `use_when`
4. Read that skill's `SKILL.md` before use
5. Skip the skill if `avoid_when` matches the task

## Directory Map

```text
skills/
  custom/
    engineering/
    research/
  external/
    automation/
    content/
    development/
    platform/
```

## Skill Index

| skill | path | use_when | avoid_when |
| --- | --- | --- | --- |
| `codebase-reader` | `skills/custom/engineering/codebase-reader` | 需要理解陌生代码库、入口、模块关系、执行路径 | 任务已经明确，主要工作是直接改代码 |
| `code-implementer` | `skills/custom/engineering/code-implementer` | 需要新增功能、修复问题、补测试、做最小验证 | 任务主要是先读代码或先做 review |
| `code-reviewer` | `skills/custom/engineering/code-reviewer` | 需要审查改动、找 bug、回归风险、安全问题、遗漏测试 | 还没有改动可评审，或者目标是直接实现功能 |
| `tech-researcher` | `skills/custom/research/tech-researcher` | 需要查询最新官方文档、API、标准或版本差异 | 问题完全可以从本地代码直接回答 |
| `gh-fix-ci` | `skills/external/automation/gh-fix-ci` | 需要排查 GitHub PR checks 或 GitHub Actions 失败 | CI 不在 GitHub Actions，或用户只想本地修代码不查线上日志 |
| `playwright` | `skills/external/automation/playwright` | 需要浏览器自动化、页面验证、截图、表单操作、UI 调试 | 不需要真实浏览器交互 |
| `doc` | `skills/external/content/doc` | 需要处理 `.docx` 文档、版式、格式保真或渲染核对 | 任务只是普通 Markdown 或纯文本编辑 |
| `imagegen` | `skills/external/content/imagegen` | 需要生成或编辑位图图片、插图、素材图、透明背景图 | 更适合直接改现有 SVG、HTML/CSS 或代码生成图形 |
| `frontend-skill` | `skills/external/development/frontend-skill` | 需要实现前端页面、视觉风格、布局和交互 | 任务不是前端界面工作 |
| `security-best-practices` | `skills/external/development/security-best-practices` | 需要做安全最佳实践审查或 secure-by-default 指导 | 只是一般代码修改或普通代码 review |
| `openai-docs` | `skills/external/platform/openai-docs` | 需要查询 OpenAI 产品、模型、API 的官方最新资料 | 问题与 OpenAI 无关 |
| `plugin-creator` | `skills/external/platform/plugin-creator` | 需要创建 plugin 目录结构和清单 | 任务不是创建 plugin |
| `skill-creator` | `skills/external/platform/skill-creator` | 需要新建 skill、初始化模板、补齐结构 | 已有 skill 只需小改，不需要新建 |
| `skill-installer` | `skills/external/platform/skill-installer` | 需要安装外部 skill 或查看可安装 skill | 目标 skill 已经在本仓库中，不需要安装流程 |

## Reading Priority

- Read `README.md` first for global routing
- Read the category `README.md` second for narrower selection
- Read the target skill's `SKILL.md` last before execution

## Maintenance Rule

- Put self-maintained skills under `skills/custom/`
- Put imported skills under `skills/external/`
- Keep category README files focused on routing metadata, not long prose
