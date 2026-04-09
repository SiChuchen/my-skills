# Platform

## AI Summary

- source_group: `external`
- area: `platform`
- choose_this_area_when: the task is about platform-specific docs or producing/managing skills/plugins

## Skill Index

### `openai-docs`

- path: `skills/external/platform/openai-docs`
- use_when: 需要查 OpenAI 模型、API、官方文档、升级说明
- avoid_when: 问题与 OpenAI 无关
- ready: yes

### `plugin-creator`

- path: `skills/external/platform/plugin-creator`
- use_when: 需要创建 plugin 目录、清单和基础结构
- avoid_when: 任务不是创建 plugin
- ready: yes

### `skill-creator`

- path: `skills/external/platform/skill-creator`
- use_when: 需要新建 skill、初始化模板、补齐 skill 结构
- avoid_when: 只是修改现有 skill，不需要新建
- ready: yes

### `skill-installer`

- path: `skills/external/platform/skill-installer`
- use_when: 需要安装外部 skill 或查看有哪些 skill 可以安装
- avoid_when: 目标 skill 已经在本仓库中，不需要安装动作
- ready: yes
