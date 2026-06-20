# Cursor Skill: 本地餐饮新媒体运营

一套完整的本地餐饮（面馆/小吃店/餐厅）社交媒体内容生产工具包。覆盖小红书、微信公众号、抖音、视频号四平台，内置可灵 AI 配图提示词库，附带实战案例。

## 安装

```bash
# 复制到 Cursor skills 目录
cp -r ./* ~/.cursor/skills/local-restaurant-newmedia/

# 或者直接 clone 到 Cursor skills 目录
git clone https://github.com/dx1302001/cursor-skill-local-restaurant-newmedia.git ~/.cursor/skills/local-restaurant-newmedia/
```

## 包含的技能

### 1. restaurant-social-media — 餐饮多平台社媒内容生产

从信息采集 → 分平台创作 → AI生图 → HTML预览 → 查重校对的全流程。

支持平台：
- 小红书（种草笔记，150-300字，口语化+Emoji）
- 微信公众号（长文推文，1500-2000字，专业有人情味）
- 抖音（短视频脚本，25-40秒，快节奏卡点）
- 微信视频号（温情故事，60-120秒，私域裂变）

### 2. xhs-photographer-note — 小红书推广笔记制作

从零交付小红书笔记：搜参考 → 写文案 → HTML手机端预览 → 可灵AI配图 → 发布。

同时支持：
- 人像摄影约拍推广（情绪人像、胶片感、自然光）
- 餐饮美食种草推广（面馆、小吃店、餐厅）

### 3. kling-prompt-library — 可灵 AI 配图提示词库

分类完整的食物摄影 + 人像摄影提示词：
- 面食特写（芝麻酱淋面、筷子夹面、蒸汽动态）
- 食材制作（芝麻现炒、香料醋熬制、蒸笼出笼）
- 人像摄影（光影情绪、大光圈电影感、胶片氛围）
- 场景环境（小店内部、店铺外景、凌晨备料）

## 实战案例

`examples/20260619-poster/` — 深圳人像摄影师小红书推广笔记
- 小红书笔记 HTML 预览（手机端模拟）
- 3张可灵AI生成的人像配图
- 完整文案 + 评论区互动

## 目录结构

```
local-restaurant-newmedia/
├── README.md
├── ai-skills/
│   ├── restaurant-social-media.md      # 餐饮社媒技能
│   ├── xhs-photographer-note.md        # 小红书推广技能
│   └── kling-prompt-library.md         # 可灵提示词库
├── examples/
│   └── 20260619-poster/
│       ├── xhs-note.html               # 小红书笔记预览
│       ├── kling-prompts.md            # 配图提示词
│       ├── cover.jpg / image2.jpg / image3.jpg
└── templates/                          # (未来) HTML模板
```

## 依赖

- 可灵 API (klingai.com) — AI 配图生成
- 现代浏览器 — HTML 预览
