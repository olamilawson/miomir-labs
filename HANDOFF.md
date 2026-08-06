# Miomir Labs — Handoff

## Project

Static website for Miomir Labs, an engineering and research house in Lagos.

- **Repository:** https://github.com/olamilawson/miomir-labs
- **Current branch:** `main`
- **Live site:** https://olamilawson.github.io/miomir-labs/ (see deployment note below)
- **Local preview:** http://localhost:8001

## What was delivered

Four-page static site with self-hosted fonts and compiled CSS:

- `index.html` — Home
- `work.html` — What we do
- `enterprise.html` — For organizations
- `contact.html` — Contact

The copy was rewritten to remove AI-generated institutional fiction. The design was stripped of vibecoding artifacts: no Tailwind CDN, no Google Fonts, no fixed footer tab bar, no decorative SVG graphics, no live clock theater, no placeholder icons.

## Repository layout

```
Miomir/
├── docs/                          # published site (GitHub Pages source)
│   ├── index.html
│   ├── work.html
│   ├── enterprise.html
│   ├── contact.html
│   ├── .nojekyll                  # disables Jekyll
│   └── assets/
│       ├── css/
│       │   ├── input.css          # Tailwind source + base styles
│       │   └── styles.css         # generated production CSS
│       ├── fonts/
│       │   ├── fonts.css          # @font-face rules
│       │   └── *.woff2            # self-hosted font files
│       └── images/logo.svg
├── miomir-design-brief.md         # original brief
├── miomir design system/          # explored design directions
├── DESIGN.md                      # single source of truth for design
├── HANDOFF.md                     # this file
├── package.json
├── tailwind.config.js
└── .gitignore
```

## Local development

1. Install dependencies:

```bash
cd /Users/praikitechnologies/Desktop/Personal/Mine/Miomir
npm install
```

2. Start a local server from the `docs/` folder:

```bash
cd docs
python3 -m http.server 8001
```

3. Open http://localhost:8001

## Building CSS

The site does not use the Tailwind CDN. Edit `docs/assets/css/input.css` or the Tailwind config, then run:

```bash
npm run build
```

For active development:

```bash
npm run watch
```

The generated file is `docs/assets/css/styles.css`.

## Updating fonts

Fonts are self-hosted in `docs/assets/fonts/`. The current set is:

- Bodoni Moda (400, 600, 700)
- Hanken Grotesk (400, 600)
- JetBrains Mono (400, 500, 700)

If you need different weights or fonts, replace the files and update `docs/assets/fonts/fonts.css`. The `fonts.css` path references fonts in the same directory, so keep files directly in `docs/assets/fonts/`.

## Editing content

All content is in the four HTML files in `docs/`. There is no templating system; each page is self-contained. Shared components (header, footer) are duplicated across pages. Keep them in sync when editing.

## Colors, spacing, and type

Tokens are defined in `tailwind.config.js` and documented in `DESIGN.md`. Key values:

- Background: `#F9F7F2` (bone)
- Accent: `#2D0A0A` (oxblood)
- Ink: `#111111`
- Gutter: `24px`
- Section break: `80px`

## Deployment

GitHub Pages is configured to publish from the `docs/` folder on the `main` branch. Pushing to `main` should trigger a Pages build.

**Current status:** the live URL was slow to update during handoff. The repository files are correct; the delay appears to be on the GitHub Pages build side. If the live site is still stale after a few minutes, check **Settings → Pages** in the GitHub repo, or trigger a build by making any small commit to `main`.

## Placeholders to replace

- Contact email: `hello@miomir.labs` appears in `docs/contact.html` and `docs/index.html` footer. Replace with the real address.
- No favicon is currently provided.

## Security note

A personal access token was used to create the repository and push commits. The Git remote URL has been reset to the clean `https://github.com/olamilawson/miomir-labs.git` and the token is not stored in the repo. If you want to push from this machine later, you will need to authenticate with your own credentials or configure a credential helper.

## What was intentionally left out

- No framework, no CMS, no build pipeline beyond Tailwind.
- No client names, testimonials, or case studies until cleared.
- No abstract data visualizations or stock photography.

## Next steps if you want to go further

1. Replace the placeholder email.
2. Add a favicon.
3. Add a real team/principles section when you have names and photos.
4. Decide whether to keep the `miomir design system/` reference assets in the repo or move them elsewhere to reduce size.
