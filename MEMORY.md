# MEMORY.md - 长期记忆

> 最后更新: 2026-06-10

---

## 关于人类

- **称呼:** 戴锦程
- **微信号:** o9cq803-PoOxRMyDbaNhZhRMwBIw@im.wechat
- **设备:** macOS (MacBook Air, Apple Silicon, Darwin 22.6.0)
- **时区:** Asia/Shanghai (UTC+8)
- **职业:** 教培行业销售（高斗云单词速记、赶考状元AI伴学）
- **OpenClaw 安装目录:** /Users/lvjinna/.openclaw
- **工作区:** /Users/lvjinna/.openclaw/workspace

## 关于我（小马云）

- **身份:** AI 助手，运行在 OpenClaw 上
- **名字:** 小马云
- **当前默认模型:** DeepSeek V4 Flash (api-proxy-deepseek/deepseek-v4-flash)
- **曾用模型:** Claude Sonnet 4.5（之前设置过但当前未使用）
- **头像:** avatars/avatar.png (Adventurer 风格 CC BY 4.0)

## 沟通规则（硬性）

1. 风格直接、不啰嗦，内容分点结构化呈现
2. 禁止使用感叹号，禁止使用任何emoji表情
3. 面对抱怨/投诉内容，不做情绪安抚，直接给可落地方案

## 系统配置

### 通信渠道
- 微信通道: 已配置 openclaw-weixin 插件，通过 ilinkai 网关连接
  - 账号: cf395fa290e6-im-bot
  - 用户ID: o9cq803-PoOxRMyDbaNhZhRMwBIw@im.wechat
  - 已登录可用，可被动收发消息
  - 限制: 不能主动给其他微信好友发消息（ilinkai 网关限制）

### 模型提供商
- **api-proxy-deepseek:** 当前活跃，DeepSeek V4 Flash（默认）+ DeepSeek V4 Pro，免费
- **api-proxy-google:** Gemini 2.5 Flash（免费）、Gemini 3 Pro Preview
- **api-proxy-claude:** Claude Sonnet 4.5（备选，有别名配置）

### 搜索配置
- **web_search:** DuckDuckGo 提供商（免费免Key），但国内可能因网络超时
- **可靠方案:** 通过浏览器（Microsoft Edge）打开网页搜索

### 关键配置项
- Gateway: local 模式, port 18789, 无认证
- 内存搜索: 已开启 (memorySearch.enabled = true, provider: local, sources: [memory, sessions], indexMode: hot)
- 配置命令: 已启用 (commands.config = true)
- 压缩配置 (compaction):
  - mode: default
  - keepRecentTokens: 16000
  - reserveTokens: 8192
  - maxActiveTranscriptBytes: 150kb
  - truncateAfterCompaction: true
  - notifyUser: true

### 已安装技能（全部已启用）
1. openclaw-skill-vetter — 技能审查
2. find-skills1 — 搜索可用技能
3. memory-setup — 记忆搜索设置
4. self-improving-agent — 自我改进、记录教训
5. yuyonghao-summarize — 网页/文件/音视频摘要
6. web-content-fetcher — 网页内容抓取（备选）
7. nano-pdf — PDF编辑
8. humanizer — 文本去AI味
9. nano-banana-pro — AI图像生成/编辑
10. proactive-agent — 主动式代理工作流

### 学习日志（self-improvement skill）
- 目录: workspace/.learnings/
- 文件: LEARNINGS.md / ERRORS.md / FEATURE_REQUESTS.md
- 已初始化，开始记录教训和错误

## 强制记忆规则（2026-06-10 建立）

以下操作执行后必须立即写入 MEMORY.md，不做筛选判断：
1. 所有浏览器操作（打开网页、搜索、发布等）
2. 所有外部发布（视频号、社交媒体等）
3. 所有配置变更（插件、技能、模型、参数等）
4. 所有文件创建/修改（重要内容）
5. 用户明确说要记住的内容

如果遗漏，用户指出后立即补充，并在 .learnings/LEARNINGS.md 中记录。

## 对话记录

### 2026-06-08
- 首次对话，完成初始配置
- 改名"小马云"
- 设置默认模型为 DeepSeek V4 Flash

### 2026-06-09
- 安装并启用10个技能
- 通过浏览器获取百度新闻头条
- 在视频号助手发布英语单词教学视频，使用定时发布功能
- 调整 compaction 配置参数
- 创建高斗云单词速打打字游戏（word-typing-game.html）

### 2026-06-10
- 开启 memorySearch 向量记忆搜索（local provider / hot索引）
- 初始化 .learnings/ 学习日志目录
- 建立强制记忆规则

## 视频号发布记录

### 单词视频（6月9日操作）
- 视频文件路径: /Users/lvjinna/Desktop/ceshi/1.MOV ~ 6.MOV
- 6月10日 9:00 — 1.MOV (moxie) ✅
- 6月10日 14:00 — 2.MOV (outdo) ✅
- 6月10日 19:00 — 3.MOV (pest) ✅
- 6月11日 9:00 — 4.MOV (ponderous) ⏳（待调封面后发表）
- 6月11日 14:00 — 5.MOV ⏳（待调封面后发表）
- 6月11日 19:00 — 6.MOV ⏳（待调封面后发表）
- 合集: 右脑图像记忆法
- 活动: 小吕学姐9260·右脑图像记忆法背单词
- 平台: https://channels.weixin.qq.com/platform/post/create

## 待办

- [ ] 等戴锦程告知工作信息（已告知——教培销售）
- [ ] 开启 memorySearch 向量搜索记忆功能 ✅ 已完成

## 教训 / 发现

- DuckDuckGo 搜索在中国可能因网络原因超时，浏览器搜索更可靠
- 微信 ilinkai 网关不能主动给好友发消息，只能被动回复
- compaction 配置字段只有 mode/size/reserveTokens/keepRecentTokens/provider，没有 enabled/strategy/threshold
- 视频号助手页面修改Vue data后UI不会自动刷新，需配合交互操作
- 浏览器targetId会在session compaction后失效，需要重新获取
- memorySearch 相关配置字段受保护，不能通过 API 修改，必须直接编辑 openclaw.json 文件
