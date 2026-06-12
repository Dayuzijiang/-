# WeChat Layout, Image, and Draft Import Workflow

Use this reference when packaging a WeChat Official Account article with cover image, body images, section-number styling, local preview HTML, or WeChat draft-box import.

## Layout Rules

- Keep the article body narrow with strong whitespace and short paragraphs.
- Do not insert the cover image into the article body. Use it only as the WeChat cover material.
- Insert one horizontal body image after each major section, not before the section.
- Use only a few red emphasis blocks. They should punctuate the article, not dominate it.
- Section headings use a centered number image above a red section subtitle.

## Image Rules

- Generate fresh cover and body images for each article; do not reuse previous article assets by default.
- Cover image: realistic, restrained, daily-life scene aligned with the exact article theme.
- Body images: bright natural light, warm pale color, clean everyday scene, breathable mood.
- Avoid: dark night scenes, large shadow areas, backlit silhouettes, gray-black low saturation, oppressive mood, and single front-facing sorrowful portraits.

## Section Number Rules

Do not rely on CSS fonts for section numbers.

Reason: WeChat and local browser previews may fall back to different fonts, causing numbers to become hard, thin, small, tilted, or malformed.

Use number images instead:

- Generate `num-01.png` to `num-04.png` locally.
- Upload them as body images and place them at the section title position.
- Tight-crop the number images so transparent padding does not make them look small.
- Render the two digits separately so spacing can be controlled.

Current stable parameters from the May 25 workflow:

- Font: `HONORSansCN-Heavy.ttf`
- Color: `#d64b52`
- Extra stroke: `0`
- Character gap: `2 * scale`
- Source target height: `74`
- In-article display height: `54px`

Tune only these values when the user asks for section-number adjustments:

- `stroke`: changes weight.
- `char_gap`: changes spacing between the two digits.
- `target_h`: changes generated image size.
- HTML image `height`: changes displayed size in the article.

## Draft Import Rules

Prefer updating an existing WeChat draft `media_id` instead of creating duplicate drafts when the user is iterating on formatting.

The current article used:

- Markdown source: `output/articles/marriage-bill-layout.md`
- Local preview HTML: `output/articles/marriage-bill-wechat.html`
- Image directory: `output/images/marriage-bill/`
- Import script: `output/import_marriage_bill_draft.py`

The script does these steps:

1. Read the Markdown article.
2. Generate section-number PNGs.
3. Upload cover, section-number images, and body images.
4. Convert the article into inline-styled WeChat HTML.
5. Write local preview HTML.
6. Update the existing WeChat draft when `DRAFT_MEDIA_ID` is set.

Run with:

```powershell
& 'C:\Users\admin\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' 'C:\Users\admin\Documents\公众号写作\output\import_marriage_bill_draft.py'
```

## Safety Notes

- Never delete directories or bulk-delete files.
- Never use recursive delete commands.
- If cleanup is needed, only delete a single explicit absolute file path after confirming it is safe.
- Keep generated image originals in place; copy outputs into the workspace when needed.
