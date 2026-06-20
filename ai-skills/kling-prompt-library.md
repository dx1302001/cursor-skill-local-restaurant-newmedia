# 可灵 Kling AI 配图提示词库

> 适用模型：kling-v1-5 | 比例：3:4 | API端点：openapi.klingai.com
> 统一负向提示词：`blurry, distorted, low quality, watermark, text, logo, oversaturated, cartoon`

---

## 一、面食/主食类

### 蒸面芝麻酱封面
```
Overhead close-up of thick steamed rice noodles generously coated with sesame paste, visible chili oil droplets, steam rising, warm food photography, rich amber and golden tones, clean white ceramic plate, editorial food styling, soft natural daylight
```

### 芝麻酱淋面动态
```
Close-up of thick steamed rice noodles being drizzled with rich golden sesame paste, visible steam rising dramatically, warm amber lighting, rustic wooden table surface, editorial food photography, shallow depth of field, extremely appetizing
```

### 筷子夹面动态
```
Chopsticks lifting thick sesame-coated steamed noodles, steam visible, close-up food action shot, dramatic side lighting catching the gloss of sesame paste, golden hour warmth, shallow depth of field, mouth-watering food photography
```

### 拌面动态瞬间
```
Action shot of chopsticks vigorously mixing thick noodles with rich sesame sauce and red chili oil, dynamic movement blur on the noodles, visible steam, warm dramatic lighting, food action photography, intense appetizing mood
```

### 配料全景
```
Overhead flat lay of thick steamed noodles with chili oil drops, rich sesame paste, fresh bean sprouts, and cucumber strips, vibrant colors, beautiful food styling, clean white ceramic plate on rustic wooden table, natural daylight, editorial food photography
```

---

## 二、酱料/调料类

### 芝麻酱特写
```
Extreme close-up of rich thick golden-brown sesame paste being scooped with a wooden spoon, glossy texture, dramatic side lighting, visible oil sheen, traditional food preparation, shallow depth of field
```

### 芝麻现炒
```
Close-up of golden sesame seeds being dry-roasted in a traditional iron wok, seeds mid-air catching light, warm smoke, golden brown tones, action food preparation photography, rustic kitchen
```

### 香料醋熬制
```
Simmering spiced vinegar in a traditional clay pot on stove, visible star anise and cinnamon sticks, aromatic steam rising, warm rustic kitchen atmosphere, cinematic food preparation photography, golden-brown liquid
```

---

## 三、厨房/制作场景

### 蒸笼出笼
```
Large bamboo steamer being opened, dramatic burst of white steam filling the frame, thick noodle sheets revealed inside, cinematic lighting, high-speed capture effect, warm kitchen atmosphere, food preparation photography
```

### 凌晨备料
```
Dark kitchen at dawn, single warm light illuminating a chef kneading dough, steam visible, quiet intimate atmosphere, cinematic composition, moody food documentary
```

### 切面特写
```
Freshly steamed thick noodle sheets being sliced with a cleaver, uniform strips, top-down flat lay, rustic wooden cutting board, editorial food photography
```

---

## 四、人像/人物类

### 老板与蒸笼（封面用）
```
Cinematic portrait of a middle-aged Chinese chef standing behind a large bamboo steamer, dramatic steam rising, warm golden backlight, shallow depth of field, documentary food photography, earthy tones, genuine focused expression
```

### 顾客吃面幸福表情
```
Young Chinese woman enjoying noodles in a cozy small restaurant, genuine happy expression, chopsticks in hand, natural window light falling on her face, warm intimate atmosphere, lifestyle food photography, candid moment
```

### 老奶奶吃面（怀旧感）
```
Elderly Chinese woman savoring noodles in a small restaurant, nostalgic expression, window light, documentary portrait style, warm tones, emotional storytelling photography
```

### 老板微笑
```
Chef smiling warmly at restaurant entrance, casual portrait, natural light, approachable and genuine expression, lifestyle photography
```

### 人像摄影·光影情绪
```
A cinematic portrait of an Asian woman in her 20s, golden hour backlight, soft bokeh background, warm amber and honey tones, hair catching sunlight, looking away thoughtfully, shallow depth of field, Fujifilm film simulation aesthetic, editorial photography, 8K
```

### 人像摄影·大光圈电影感
```
A stunningly beautiful Chinese woman in her 20s, cinematic portrait photography, shot on Canon EOS R5 with 85mm f/1.2L lens, extremely shallow depth of field, creamy bokeh background with soft golden lights, natural window light, warm amber tones, elegant and natural makeup, silky black hair catching light, wearing a simple white silk blouse, gentle confident expression, editorial fashion photography, Fujifilm film simulation aesthetic, Kodak Portra 400 color science, 8K
```

### 人像摄影·胶片感氛围
```
Full body portrait of a woman in a flowy beige dress walking through a sunlit meadow at golden hour, motion blur in fabric, vintage film grain, Kodak Portra 400 color science, dreamy atmosphere, warm golden light filtering through trees, editorial fashion photography, storytelling composition, 8K
```

---

## 五、环境/氛围类

### 小店内部
```
Cozy small restaurant interior with wooden tables and warm pendant lighting, clean and inviting atmosphere, steam visible from open kitchen, lifestyle photography
```

### 店铺外景（黄昏）
```
Small noodle shop exterior at dusk, warm glowing sign, street photography aesthetic, inviting atmosphere, urban documentary style
```

---

## 六、对比/科普类

### 蒸面 vs 凉皮
```
Split comparison food photography: thick steamed rice noodles on the left, thin translucent liangpi cold noodles on the right, both on ceramic plates, overhead flat lay, studio lighting, clean composition
```

---

## 使用建议

1. **封面优先**：先跑封面图，确认风格OK再跑配图
2. **单批≤9张**：避免可灵429限流，每张提交间隔≥0.3秒
3. **轮询策略**：每2秒查一次状态，最多等40次（80秒）
4. **负向提示词**：食物类禁 `oversaturated, cartoon`；人像类另禁 `nsfw, non-Chinese`（如需中国面孔）
5. **蒸面关键词**：`thick steamed noodles`, `sesame paste`, `steam visible`, `warm golden tones`
