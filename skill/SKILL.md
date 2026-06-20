---
name: local-restaurant-newmedia
description: >-
  Generates multi-platform new-media copy packages for local restaurants and food
  shops in China (WeChat Channels, Official Account, Xiaohongshu, Douyin). Produces
  deduplicated scripts, image briefs, schedules, and CONTEXT handoff docs. Use when
  the user asks for restaurant/面馆/餐饮新媒体文案, video号/公众号/小红书/抖音 scripts,
  or 6-7月运营方案 for a food business.
---

# Local Restaurant New Media Copy

## When to use

- User requests **餐饮 / 面馆 / 本地店** multi-platform copy
- Platforms: **视频号、公众号、小红书、抖音** (any subset or all four)
- User provides or will provide: brand doc, old copy, shop name, founder, location
- User wants **deduplication** against existing materials and **file deliverables**

## Workflow

Copy this checklist and track progress:

```
- [ ] 1. Gather brand facts + read old materials
- [ ] 2. Build dedup list (old topics → avoid)
- [ ] 3. Draft new topic matrix (per platform)
- [ ] 4. Write full deliverables (not outlines)
- [ ] 5. Write schedule + CONTEXT handoff
- [ ] 6. Save to user-specified folder
```

### Step 1: Gather inputs

| Field | Required | Placeholder if missing |
|-------|----------|------------------------|
| Shop name | Yes | `[店名]` |
| Founder / voice | Yes | `[老板称呼]` |
| City + district | Yes | `[区域]` |
| Hero product | Yes | `[招牌产品]` |
| Selling points | Yes | 3-5 concrete sensory details |
| Address / metro / price / hours / contact | Optional | `[具体地址]` etc. |

**Read old materials first**: `.docx`, `.md`, prior campaign folders. Extract every used hook/topic into a dedup table.

For `.docx` on Windows, extract text:

```python
import zipfile, xml.etree.ElementTree as ET
W = '{http://schemas.openxmlformats.org/wordprocessingml/2006/main}'
with zipfile.ZipFile(path) as z:
    root = ET.fromstring(z.read('word/document.xml'))
for p in root.iter(W+'p'):
    t = ''.join(n.text for n in p.iter(W+'t') if n.text)
    if t: print(t)
```

### Step 2: Dedup rule

**Never reuse** the same hook angle from old materials. Change at least one of:
- scene (breakfast → lunch / rain / overtime)
- narrator (founder → customer / delivery rider)
- knowledge frame (vs 凉皮 → vs 热干面 / why 蒸 not 煮)

Document avoided topics in `00_使用说明与去重对照.md`.

### Step 3: Platform specs

| Platform | Tone | Default count | Each piece includes |
|----------|------|---------------|---------------------|
| 视频号 | Warm story, 60-90s | 10 | Title, cover text, shot table, CTA |
| 公众号 | Depth, 1500-2200 chars | 10 | H2 sections, quote block, CTA, 6-8 image briefs |
| 小红书 | Guide / 种草 | 3 | Title+emoji, body, tags, 6-image layout table |
| 抖音 | Hook in 3s, 15-45s | 10 | BGM, second-by-second table, pinned comment, DOU+ tip |

**Voice**: Real, local, food-first. No empty hype. Founder as friend, not ad voice.

### Step 4: Output folder structure

Save under user path (default pattern):

```
{output_root}/
├── CONTEXT_打包交接.md
├── 00_使用说明与去重对照.md
├── 01_视频号文案_10条.md
├── 02_公众号文案_10篇_含配图参考.md
├── 03_小红书笔记_3篇_含封面布局.md
├── 04_抖音短视频脚本_10条.md
└── 05_6-7月发布排期建议.md
```

Adjust counts in filenames if user requests different numbers.

### Step 5: CONTEXT handoff (always write)

`CONTEXT_打包交接.md` must include:
- Project summary + file index
- Brand constants + placeholders
- Dedup summary + topic quick reference
- Publish rhythm summary
- Launch checklist
- **Paste-ready prompt** for new chat sessions

### Step 6: Schedule defaults

| Platform | Frequency | Best times |
|----------|-----------|------------|
| 抖音 | Daily | 19:30-21:00 |
| 视频号 | Every 2 days | 12:00-13:00 or 21:00 |
| 公众号 | 2/week | Tue/Fri 18:00 |
| 小红书 | 1/week | 07:30-08:30 or 20:00-22:00 |

Principle: **one shoot, multi-cut** — 15s Douyin / 60s Channels / Xiaohongshu stills.

## Quality gate

Before finishing:

- [ ] Every piece is **full copy**, not bullet outlines
- [ ] No hook duplicates old materials (verify against dedup table)
- [ ] Each piece has explicit CTA (comment / save / visit / DM)
- [ ] Placeholders consistent across all files
- [ ] CONTEXT file written

## Additional resources

- Templates and field specs: [reference.md](reference.md)
- Reference sample (老陕面馆): [examples.md](examples.md)
