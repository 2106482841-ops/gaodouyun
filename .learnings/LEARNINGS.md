# Learnings

Corrections, insights, and knowledge gaps captured during development.

**Categories**: correction | insight | knowledge_gap | best_practice

---

## [LRN-20250610-001] correction

**Logged**: 2026-06-10T11:27:00+08:00
**Priority**: high
**Status**: pending
**Area**: memory

### Summary
用户指出我多次忘记将操作写入长期记忆，需要建立强制记录机制

### Details
被问到之前操作过的高斗云网页时，MEMORY.md 中没有相关记录。同一个问题（忘记记录操作）已被用户多次指出，说明不是偶发而是机制缺陷。

### Suggested Action
所有通过浏览器操作、外部发布、配置变更等关键操作，执行后必须立即写入 MEMORY.md，不做筛选判断。用户说"记下来"时也要立即补充。

### Metadata
- Source: user_feedback
- Tags: memory, record-keeping
- Recurrence-Count: 2
- First-Seen: 2026-06-08
- Last-Seen: 2026-06-10

---


**Logged**: 2026-06-10T11:58:00+08:00
**Priority**: critical
**Status**: pending
**Area**: memory

### Summary
用户之前要求做网站，但对话压缩后该信息丢失，我完全记不起来

### Details
用户之前让我做一个网站，但该请求发生在强制记忆规则建立之前，且对话压缩后 Summarizer 没有提取这条信息，导致我完全丢失了这个上下文。

### Suggested Action
所有对话中的重要请求（特别是创建内容、修改配置等操作），即使当时没有立即记入 MEMORY.md，在强制规则建立后也应倒查并补录。每次对话重启后，先扫描 MEMORY.md 确认所有待办事项已记录。

### Metadata
- Source: user_feedback
- Tags: memory, compaction, lost-context
- Recurrence-Count: 1

---

## [LRN-20250609-001] workspace_skills_discovery

**Logged**: 2026-06-09T19:33:00+08:00
**Priority**: high
**Status**: pending
**Area**: config

### Summary
用户之前要求的10个技能存放在 workspace/skills/ 目录下，但其中7个未注册到 skills.entries 配置中，因此未被加载。

### Details
- 技能文件都在 `workspace/skills/` 目录下（如 find-skills1、humanizer 等）
- 但只有 `skill-vetter`、`summarize`、`nano-pdf` 这三项在配置的 `skills.entries` 中
- 其他7项（find-skills、humanizer、memory-setup、nano-banana-pro、proactive-agent、self-improvement、web-content-fetcher）需要手动加入配置并 enabled: true
- 加入后需要重启 gateway 才能生效

### Suggested Action
未来如果用户提到下载/安装技能，先检查 workspace/skills/ 目录下的文件和 skills.entries 配置是否一致，避免技能文件存在但未启用

### Metadata
- Source: user_feedback
- Related Files: /Users/lvjinna/.openclaw/openclaw.json
- Tags: config, skills, troubleshooting
