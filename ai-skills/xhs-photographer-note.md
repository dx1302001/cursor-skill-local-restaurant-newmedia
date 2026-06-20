---
name: xhs-photographer-note
description: "从零制作小红书推广笔记——人像摄影约拍或餐饮美食种草，撰写文案、HTML网页预览、可灵AI配图生成，一条龙交付。人像配图提示词内置，美食配图提示词见 references/。"
version: 1.0.0
author: Hermes Agent
tags: [小红书, 人像摄影, 美食种草, 餐饮推广, 文案, 可灵, Kling, HTML, 配图, 推广]
platforms: [macos, linux, windows]
---

# 小红书人像摄影师笔记制作

从零到交付：搜索参考 → 写文案 → HTML 预览 → 可灵配图 → 嵌入发布。

## 触发条件

用户要求制作小红书推广笔记（摄影师约拍、人像相关，或餐饮美食种草、面馆/餐厅推广），需要文案 + 网页预览 + AI 配图。

美食餐饮场景：文案风格偏种草/探店/打工人共鸣，配图用 `references/food-restaurant-kling-prompts.md` 中的提示词。

## 工作流程

### Step 1: 搜集参考

搜索小红书人像摄影师爆款文案模板。中文社交媒体平台反爬严
重，优先用已知套路，不必执着搜索结果：

- 情绪感召型：「这组照片拍出了我想要的感觉...」
- 干货教程型：「拍照不会摆姿势？记住这5个要点...」
- 故事叙事型：「她说想拍一组属于自己的照片...」
- 审美展示型：「今日份的美学灵感...」

关键要素：大量 Emoji（✨📸🌸💫）、底部话题标签、个人化口吻、
自然引导 CTA。

### Step 2: 撰写文案

写一篇适合人像摄影师的小红书笔记文案。要点：

- 开头用情绪 hook（反问/共鸣句）
- 中间用摄影专业语言包装（光影、构图、氛围）
- 结尾有清晰 CTA（坐标 + 约拍方式 + 私信暗号）
- 句号换行，适合手机阅读
- 话题标签 5-8 个
- 使用 `#人像摄影 #情绪人像 #城市约拍 #胶片感` 等

### Step 3: 制作 HTML 预览

制作单文件自包含 HTML，模拟小红书手机端卡片。设计要素：

- 420px 宽卡片居中，圆角阴影，白色背景
- 头部：圆形头像 + 用户名 + 地区 + 关注按钮（小红书红 #FF2442）
- 图片轮播：3:4 竖版，左右箭头 + 底部圆点 + 触屏滑动
- 互动栏：点赞（可切换 ❤️/🤍）+ 评论 + 分享 + 收藏
- 正文区：点赞数 + 文案 + 话题标签
- 评论区：模拟 2-3 条真实评论（含作者回复）
- 底部发布栏
- 系统字体栈（PingFang SC / system-ui）

图片加载策略：
```html
<img src="cover.jpg" onload="this.style.display='block';this.nextElementSibling.style.display='none'" 
     onerror="this.style.display='none';this.nextElementSibling.style.display='flex'">
<div class="slide-bg" style="display:none"><!-- CSS 渐变占位 --></div>
```

CSS 渐变占位用暖金色模拟摄影氛围（封面/特写/全景三种配色）。

参考文件见 `templates/xhs-card.html`。

### Step 4: 可灵 AI 配图

#### 准备工作

需要可灵 API Key。新版 Key（3.0 Turbo+）格式为：
`api-key-kling-<32位字符>`

#### API 端点

| 操作 | URL |
|------|-----|
| 提交生成 | `POST https://openapi.klingai.com/v1/images/generations` |
| 查询状态 | `GET https://openapi.klingai.com/v1/images/generations/{task_id}` |

> ⚠️ **重要**：新版 Key 必须用 `openapi.klingai.com`，不能用
> `api.klingai.com`。`api-beijing.klingai.com` 同样可用。

#### 认证

```
Authorization: Bearer api-key-kling-<完整Key>
```

必须带完整的 `api-key-kling-` 前缀！仅 Key 本体会返回 401。

#### 提交任务

```python
payload = {
    "model_name": "kling-v1-5",
    "prompt": "完整的英文提示词...",
    "negative_prompt": "blurry, distorted, low quality, watermark",
    "aspect_ratio": "3:4",
    "n": 1
}
```

- 模型用 `kling-v1-5`（稳定且质量好）
- 比例必须 `3:4`（小红书竖版）
- 提示词用英文，详细描述光影、氛围、镜头、胶片风格
- 负向提示词禁止模糊/变形/水印

#### 轮询下载

```python
# 查询直到 task_status == "succeed"
GET /v1/images/generations/{task_id}
# 响应: data.task_result.images[0].url → 下载
```

生成通常 8-20 秒。返回的 URL 是带签名的 CDN 地址，直接
`urllib.request.urlretrieve(url, path)` 下载即可。

#### 配图提示词模板

以下为人像摄影提示词。**餐饮/美食推广配图**（面馆、小吃店、餐厅等）见 `references/food-restaurant-kling-prompts.md`，包含蒸面特写、食材制作、店内环境、顾客吃面等完整分类。

**封面·光影情绪人像：**
"A cinematic portrait of an Asian woman in her 20s, golden hour
backlight, soft bokeh background, warm amber and honey tones, hair
catching sunlight, looking away thoughtfully, shallow depth of field,
Fujifilm film simulation aesthetic, editorial photography, 8K"

**图2·自然光特写：**
"Close-up portrait of a young woman, soft diffused daylight from
window, clean skin texture, natural makeup, gentle serene
expression, white linen, minimal aesthetic, warm neutral palette,
Canon EF 50mm f/1.2 look, cream bokeh, lifestyle photography"

**图3·胶片感氛围：**
"Full body portrait of a woman in a flowy beige dress walking through
a sunlit meadow at golden hour, motion blur in fabric, vintage film
grain, Kodak Portra 400 color science, dreamy atmosphere, editorial
fashion photography, storytelling composition"

### Step 5: 整合验收

1. 图片保存到 HTML 同目录：`cover.jpg`、`image2.jpg`、`image3.jpg`
2. 浏览器打开 HTML 文件，验证 3 张图加载正常
3. 检查文案中工作室名称/坐标/CTA 正确
4. 检查话题标签匹配

## 踩坑记录

1. **可灵端点陷阱**：`api.klingai.com` 拒绝新版 Key → 改用 `openapi.klingai.com`
2. **Auth 前缀**：必须 `Bearer api-key-kling-<key>`，不能只有 Key 本体
3. **JWT vs Bearer**：旧端点需要 JWT 签名，新端点直接 Bearer
4. **图片 onload 顺序**：先设 CSS 占位为 `display:none`，img 加载成功
   后用 `onload` 显示图片并隐藏占位；失败则反向操作
5. **中文平台反爬**：小红书/知乎/微信公众号搜索大概率被拦截，
   直接用经验模板写文案比死磕搜索更快

## 交付物清单

完成后目录结构：
```
poster/
├── xhs-note.html    # 网页预览（可双击打开）
├── cover.jpg        # 封面配图
├── image2.jpg       # 配图2
├── image3.jpg       # 配图3
└── kling-prompts.md # 提示词备份（可选）
```

## 用户自定义

如果用户有工作室信息，更新以下位置：
- 用户名 + 地区（header）
- CTA 文案中的坐标和业务范围
- 话题标签中的地区
- 评论区作者名和网友地名
- 同步存入记忆避免重复询问
