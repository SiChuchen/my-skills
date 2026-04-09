# My Skills Library

这个仓库用于整理和沉淀我常用的通用 skills。

整个项目不再按平台来源命名，而是按两层规则组织：

- 第一层按来源分为 `custom` 和 `external`
- 第二层按主要作用继续分类
- 最末级目录才是具体可用的 skill

## 目录结构

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

## 分类原则

- `custom`: 自己定义、自己维护、会持续调整的 skills
- `external`: 来自官方、社区或其他来源，整理后收进库里的 skills
- `engineering`: 面向代码阅读、实现、评审
- `research`: 面向技术调研和资料核验
- `automation`: 面向浏览器自动化、CI 排查等自动执行类场景
- `content`: 面向文档和图片等内容产出
- `development`: 面向前端开发和安全实践
- `platform`: 面向平台文档、skill/plugin 创建与安装

## 使用方式

- 浏览时先进入来源目录，再进入用途目录，最后选择具体 skill
- 真正需要复制或迁移时，只复制最末级的 skill 目录
- 中间层目录主要用于分类管理，不是直接可用的 skill

## 说明文档

- `skills/README.md`: 总体分类说明
- `skills/custom/README.md`: 自定义 skills 总览
- `skills/external/README.md`: 外部来源 skills 总览
- 各用途目录下都有自己的 `README.md`，用于说明该分类中的 skill 是做什么的

## 维护方式

- 新增自定义 skill: 放到 `skills/custom/` 下合适的用途目录
- 收录外部 skill: 放到 `skills/external/` 下合适的用途目录
- 调整分类: 优先改目录结构和对应 README，再处理具体 skill
