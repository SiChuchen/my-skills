# My Skills Library

这个仓库用于集中管理我个人常用的 Codex skills，后续按需取用。

## 目录说明

- `skills/`: 技能目录本体
- `skills/.system/`: 系统级 skills 快照，保留作参考或迁移使用

## 使用方式

按需把目标 skill 目录复制到本机 `~/.codex/skills/` 下即可，修改后重启 Codex 让新 skill 被重新发现。

## Skills

### Baseline

- `codebase-reader`: 用于快速读懂陌生代码库，定位入口、梳理模块关系、追踪执行流程。
- `code-implementer`: 用于安全地改代码、补测试、做最小必要验证，尽量遵循现有仓库约定。
- `code-reviewer`: 用于做代码评审，优先找 bug、回归风险、安全问题和缺失测试。
- `tech-researcher`: 用于查询最新技术资料，优先看官方文档和一手资料。

### Curated

- `doc`: 用于处理 `.docx` 文档，关注格式、布局和渲染一致性。
- `frontend-skill`: 用于做前端页面和交互实现，强调风格明确、视觉统一、避免模板化设计。
- `playwright`: 用于浏览器自动化、页面验证、表单操作、截图和 UI 流程检查。
- `gh-fix-ci`: 用于排查 GitHub Actions 相关 CI 失败，聚焦检查状态、日志和修复路径。
- `security-best-practices`: 用于做安全最佳实践检查，覆盖 Python、JavaScript/TypeScript、Go 等常见场景。

### System Snapshot

- `openai-docs`: 用于查询 OpenAI 官方产品和 API 文档。
- `skill-installer`: 用于安装外部 skill 或列出可安装的 skill。
- `skill-creator`: 用于创建或完善新的 skill 结构和元数据。
- `plugin-creator`: 用于创建 Codex plugin 的基础目录和清单文件。
- `imagegen`: 用于生成或编辑位图类图片资源。

## 维护方式

- 新增 skill: 直接在 `skills/` 下增加目录
- 更新 skill: 修改对应 skill 目录后提交即可
- 同步本机已有 skills: 以 `~/.codex/skills/` 为准，整理后覆盖到仓库中的 `skills/`
