$Host.UI.RawUI.WindowTitle = 'qoder Qwen3.8-Flash - 识别弟弟的画'
Set-Location 'C:\Users\wk2001\Desktop\柔'

$prompt = @'
你是儿童画作识别专家。请逐张仔细查看附带的 4 张图片——这是弟弟（小朋友）画的画，是《两雄争霸》游戏的素材（游戏角色：弟弟陈大至 vs 姐姐陈小柔，还有龙、武器、盔甲、战马等元素）。

任务：
1. 逐张描述每张画的内容：画了什么（人物/物品/动物/文字）、主色调、画风、纸张或涂色特点。
2. 判断每张画适合放进游戏哪里（例如：哥哥头像 / 姐姐头像 / 背景装饰 / 商店图标 / 战斗形象），并给出简短理由。
3. 把识别结果写入当前目录 game/画作说明.md（UTF-8，Markdown 格式），文件名用原始文件名对应标注，格式清晰，供另一个 AI 读取后把画结合进 HTML 游戏。
4. 最后用 3-5 句话口头总结每张画是什么。

注意：只写 game/画作说明.md，不要修改其他任何文件。
'@

qoderclicn -i $prompt `
  --attachment "C:\Users\wk2001\Desktop\柔\game\微信图片_20260828225748_5632_47.jpg" `
  --attachment "C:\Users\wk2001\Desktop\柔\game\微信图片_20260828225748_5634_47.jpg" `
  --attachment "C:\Users\wk2001\Desktop\柔\game\微信图片_20260828225748_5637_47.jpg" `
  --attachment "C:\Users\wk2001\Desktop\柔\game\微信图片_20260828225748_5638_47.jpg" `
  -m Qwen3.8-Flash `
  --permission-mode bypass_permissions `
  --cwd "C:\Users\wk2001\Desktop\柔"
