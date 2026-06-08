# 2026-06-08 WeChat Workflow Conversation Archive

This archive condenses the working conversation into reusable instructions for the `wechat-viral-writer` skill and GitHub sync.

## Stable Account Lane

- Target readers: middle-aged readers.
- Core lane: family, relationships, money, health, emotional security, and relaxed daily living.
- Topic selection should first scan current hot topics, then keep only angles that fit the account lane.
- Avoid generic hot-topic writing. A hot event is only an entry point; the article must land in daily family and middle-age life.

## Writing Defaults Confirmed

- Opening should feel like real-life observation or a concrete daily scene.
- Avoid fake openings, performative empathy, empty chicken soup, and overly young internet phrasing.
- Tone should match middle-aged readers' reading habits: restrained, concrete, readable, and not too sharp.
- Article ending can include light blogger interaction from `七页`, mainly to invite comments.

Recommended interaction pattern:

```text
写到这里，七页也想问问你：

……

如果你愿意，也可以在评论区说一句：
……
```

Do not make the interaction hard-sell, forced, or promotional.

## Layout Defaults Confirmed

- Cover image is uploaded as WeChat cover material only; do not insert it into the body.
- Body keeps narrow width, strong whitespace, short paragraphs, and restrained red emphasis.
- Use one horizontal body image after each major section.
- Section headings use red rounded number images, then red subtitle text below.
- Red emphasis blocks should be used only as punctuation, not throughout the article.

## Section Number Image Rules

Do not rely on CSS font rendering for section numbers.

Use generated number PNGs:

- `num-01.png`, `num-02.png`, etc.
- Support as many numbers as the article has sections. The June 8 article used `num-01.png` through `num-05.png`.
- Current stable size logic:
  - Font: `HONORSansCN-Heavy.ttf`
  - Color: `#d64b52`
  - Extra stroke: `0`
  - Character gap: `2 * scale`
  - Source target height: `74`
  - In-article display height: `54px`

Important failure learned:

- Do not generate giant high-resolution number assets for WeChat body use unless tested. A prior attempt made the section number display extremely large in the editor.

## Visual Defaults Confirmed

- Generate fresh visuals for each article.
- Do not reuse previous body images by default.
- Avoid repeated identical-looking people across one image set.
- Prefer realistic, restrained, everyday Chinese home/family scenes.
- Body images should be bright and breathable: natural light, warm pale color, clean ordinary life.
- Avoid dark, oppressive, night, backlit silhouette, gray-black low-saturation scenes.

## June 8 Article Workflow

Selected topic:

- `高考作文写给孩子，也写给了中年后的我们`

Angle:

- Use Gaokao essay and exam discussion as the current-event entry point.
- Main body lands on middle-aged life: planning, action, family pressure, parents' mindset, money, health, and daily responsibility.

Generated body files in the writing workspace:

- Markdown source: `C:\Users\admin\Documents\公众号写作\output\articles\gaokao-midlife-essay-layout.md`
- Preview HTML: `C:\Users\admin\Documents\公众号写作\output\articles\gaokao-midlife-essay-wechat.html`
- Image directory: `C:\Users\admin\Documents\公众号写作\output\images\gaokao-midlife-essay`
- Import script: `C:\Users\admin\Documents\公众号写作\output\import_gaokao_midlife_essay_draft.py`

WeChat draft:

- Title: `高考作文写给孩子，也写给了中年后的我们`
- Digest: `人到中年才明白，很多事不是想清楚才开始，而是边过边留下答案。`
- Draft media id: `7bCfZGsY87Iv9f0BhpwbwC_F74727L385KRfuxzmxC8ZSbv4dp8y5_T6M6GWAOPh`

## June 8 Childcare Subsidy Draft Recovery

The previous `999亿元育儿补贴` article had been prepared but not imported. It was re-imported to WeChat draft box.

Generated body files in the writing workspace:

- Markdown source: `C:\Users\admin\Documents\公众号写作\output\articles\childcare-subsidy-layout.md`
- Preview HTML: `C:\Users\admin\Documents\公众号写作\output\articles\childcare-subsidy-wechat.html`
- Image directory: `C:\Users\admin\Documents\公众号写作\output\images\childcare-subsidy`
- Import script: `C:\Users\admin\Documents\公众号写作\output\import_childcare_subsidy_draft.py`

WeChat draft:

- Draft media id: `7bCfZGsY87Iv9f0BhpwbwJZYDhxY1oOCDS8dBJtxXQBY_i9tZIJRRiyR0W5jOt0O`

## Import Script Practice

- Keep `DRAFT_MEDIA_ID = ""` only when creating a new draft.
- After creation, backfill `DRAFT_MEDIA_ID` into the import script so future runs update the same draft.
- If an article has five sections, upload `num-05.png` and `section-05.png` too.
- Validate before import:
  - Python syntax check with `py_compile`
  - Article section count
  - Image count
  - Generated preview HTML exists

## Safety

- Do not run recursive delete commands.
- Do not delete directories.
- Do not use wildcard bulk deletion.
- Generated image originals under Codex should be left in place; copy selected outputs into the project.
