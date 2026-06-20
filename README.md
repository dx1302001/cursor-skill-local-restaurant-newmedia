# cursor-skill-local-restaurant-newmedia

Cursor Agent Skill：**本地餐饮 / 面馆多平台新媒体文案生成**

一键生成视频号、公众号、小红书、抖音全套文案 + 排期 + CONTEXT 交接包，并自动与旧方案去重。

## Install

### Cursor（个人技能）

```bash
git clone https://github.com/dx1302001/cursor-skill-local-restaurant-newmedia.git
```

将 `skill/` 目录复制到：

- **Windows**: `%USERPROFILE%\.cursor\skills\local-restaurant-newmedia\`
- **macOS/Linux**: `~/.cursor/skills/local-restaurant-newmedia/`

或在本仓库目录执行：

```powershell
# Windows PowerShell
$dest = "$env:USERPROFILE\.cursor\skills\local-restaurant-newmedia"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Path ".\skill\*" -Destination $dest -Recurse -Force
```

### 验证

在 Cursor 中对 Agent 说：

> 用 local-restaurant-newmedia skill，给一家深圳面馆写视频号5条、抖音5条

## Skill triggers

Agent 会在以下场景自动适用本技能：

- 餐饮 / 面馆 / 本地店新媒体文案
- 视频号、公众号、小红书、抖音脚本
- 6-7 月运营方案、种草文案、去重续写

## Repository structure

```
├── README.md
├── LICENSE
└── skill/
    ├── SKILL.md        # 主技能文件（Agent 读取）
    ├── reference.md    # 模板与字段规范
    └── examples.md     # 老陕面馆参考样例
```

## What it produces

默认输出 7 个文件：

| 文件 | 内容 |
|------|------|
| `CONTEXT_打包交接.md` | 新对话续接包 |
| `00_使用说明与去重对照.md` | 去重对照 |
| `01_视频号文案_10条.md` | 分镜口播稿 |
| `02_公众号文案_10篇_含配图参考.md` | 长文 + 配图 brief |
| `03_小红书笔记_3篇_含封面布局.md` | 种草 + 6 图布局 |
| `04_抖音短视频脚本_10条.md` | 分镜 + DOU+ 建议 |
| `05_6-7月发布排期建议.md` | 交叉排期 |

条数可按需求调整。

## Author

许大新新媒体运营 · 样例客户：老陕面馆（深圳宝安区）

## Push to GitHub

本地仓库已初始化并完成首次 commit。若尚未上传：

```bash
cd C:\Users\Administrator\cursor-skill-local-restaurant-newmedia
gh auth login
gh repo create cursor-skill-local-restaurant-newmedia --public --source=. --remote=origin --push
```

或双击运行 `push-to-github.bat`（Windows）。

仓库将创建在：`https://github.com/dx1302001/cursor-skill-local-restaurant-newmedia`

## License

MIT
