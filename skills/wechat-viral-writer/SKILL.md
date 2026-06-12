---
name: wechat-viral-writer
description: WeChat Official Account viral-writing workflow for Chinese 公众号 articles. Use when Codex needs to plan, analyze, title, draft, rewrite, polish, or package a 微信公众号/微信推文 article from a topic, hot news item, user-provided素材, draft, or imitation sample, especially for emotion, family, money, health, relationship, social-news, or middle-aged-reader angles.
---

# WeChat Viral Writer

## Core Use

Write in Chinese for WeChat Official Account content. Help the user move from topic or素材 to a usable article through selection, angle analysis, title generation, drafting, polishing, and revision.

Prioritize the user's established account lane unless they explicitly replace it: middle-aged readers' family, relationships, money, health, emotional security, and relaxed daily living. For topic selection, first scan current hot topics when the user asks for today's topic or热点选题, then keep only angles that fit this lane.

For the current account's rural/county audience, one-minute retention structure, authoritative screenshot rules, and policy-cover style, read `references/current-account-production-rules.md`.

Do not expose hidden chain-of-thought. When useful, show a brief visible work note instead:

```text
[工作记录]
目标: ...
进度: ...
用户意图: ...
下一步: ...
```

## Workflow

1. Clarify or infer the task mode: `/分析`, `/标题`, `/编写`, `/精写`, `/改写`, `/复盘`, or full article workflow.
2. Identify source material: user topic, draft, news item, case, imitation sample, or current热点.
3. Analyze the article angle before writing: reader pain point, factual basis, conflict, emotional hook, discussion value, and why the angle fits the account lane.
4. Produce the requested artifact directly. Avoid long meta-explanations unless the user asks for them.
5. Revise based on user feedback, tracking whether they want stronger conflict, softer tone, more生活感, shorter copy, or a more publish-ready version.

## Writing Defaults

- Start like a real-life observation or concrete scene; avoid fake openings, performative empathy, and generic chicken-soup phrasing.
- Keep the voice human, compact, and readable. Avoid AI味, excessive list formatting, empty slogans, and口水文.
- Use a restrained but engaging WeChat style: clear emotional tension, concrete details, crisp transitions, and a comment-guiding ending.
- Keep facts grounded. Do not invent allegations, private details, legal conclusions, medical claims, or policy facts.
- When handling sensitive politics, religion, public tragedies, illness, finance, or legal disputes, reduce sensational wording and add uncertainty where facts are unverified.
- Prefer Chinese punctuation and Chinese quotation marks. Avoid encoding-prone symbols.
- Use bold only for a few genuinely important lines; do not over-highlight.

## Task Modes

- `/分析`: Analyze素材 structure, strengths, weak points, likely reader reactions, conflict, novelty, and爆款 potential.
- `/标题`: Generate 10 title options within 30 Chinese characters where possible; balance curiosity with truthfulness.
- `/编写`: Draft a complete article. Default target is about 2500-3000 Chinese characters unless the user specifies a different length.
- `/精写`: Polish a confirmed passage around 200 Chinese characters, preserving the user's intended meaning while adding tension and discussion value.
- `/改写`: Rewrite a provided draft for stronger opening, clearer structure, less AI味, and better WeChat readability.
- `/复盘`: Review an article's opening, topic fit, structure, emotional rhythm, title-content match, ending, and publish risk.

## Visual And Packaging Defaults

When the request includes cover images, body images, WeChat formatting, or draft-box packaging, keep these defaults:

- Cover and body images must match the specific article theme; do not reuse prior assets by default.
- Prefer AI-generated, realistic, restrained daily-life visuals. Avoid always using a single front-facing person.
- Keep body images bright and breathable: natural light, warm light colors, clean everyday scenes.
- Avoid large dark areas, night scenes, backlit silhouettes, gray-black low saturation, and oppressive visual mood unless the user explicitly asks.
- Use the established layout style when packaging: narrow body text, generous whitespace, rounded red numbered section headings, a few red emphasis lines, and one horizontal image after each major section.
- For policy and livelihood articles, separate cover logic from body-image logic: body images may use authoritative source screenshots, while the cover should normally be a clean headline-led poster.
- For packaging, section-number image generation, local preview HTML, or WeChat draft-box import details, read `references/wechat-layout-import.md`.
- For this workspace's draft-box flow, check `output/run_wechat_draft_ascii.cmd`, `output/publish_custom_draft.py`, and `output/themes/seven-pages-soft.yaml` when needed.

## Reference

Read `references/prompt-framework.md` when the user asks for title formulas, detailed article-structure analysis, full drafting standards, or prompt-style command behavior derived from the source prompt.
Read `references/current-account-production-rules.md` for the current account's audience, retention, policy screenshot, cover, and packaging rules.
Read `references/wechat-layout-import.md` when the user asks for article packaging, cover/body images, section-number styling, local preview HTML, or direct import/update to the WeChat draft box.
