# Miomir Labs — Handoff

## Project

Static website for Miomir Labs, an engineering and research house in Lagos.

- **Repository:** https://github.com/olamilawson/miomir-labs (public)
- **Branch:** `main`
- **Canonical URL:** https://miomirlabs.com/
- **Local preview:** http://localhost:8001

## What the site is

**One page.** `docs/index.html` holds everything; navigation is in-page anchors: `#hero`, `#work`, `#products`, `#enterprise`, `#approach`, `#contact`.

`work.html`, `products.html`, `enterprise.html`, and `contact.html` are `noindex, follow` redirect stubs that send old inbound links to the matching anchor. They carry no content.

The positioning leads with correctness rather than category breadth, and presents Prager and Prai as evidence that the house runs its own foundations. See the Positioning section of `DESIGN.md` before rewriting any copy.

## Repository layout

```
Miomir/
├── docs/                          # published site (GitHub Pages source)
│   ├── index.html                 # the entire site
│   ├── work.html                  # redirect stubs
│   ├── products.html
│   ├── enterprise.html
│   ├── contact.html
│   ├── CNAME                      # miomirlabs.com
│   ├── robots.txt
│   ├── sitemap.xml
│   ├── favicon.svg / favicon.ico
│   ├── .nojekyll                  # disables Jekyll
│   └── assets/
│       ├── css/input.css          # Tailwind source + base styles
│       ├── css/styles.css         # generated production CSS
│       ├── fonts/                 # self-hosted, subset woff2 + fonts.css
│       └── images/                # logo.svg, og-image.png, apple-touch-icon.png
├── miomir-design-brief.md         # original brief
├── miomir design system/          # explored design directions (15 MB, reference only)
├── DESIGN.md                      # single source of truth for design and copy rules
├── HANDOFF.md                     # this file
├── package.json
├── tailwind.config.js
└── .gitignore
```

## Local development

```bash
npm install
```

```bash
cd docs && python3 -m http.server 8001
```

Open http://localhost:8001. If the port is busy, a stray server from an earlier session may still hold it — find it with `lsof -nP -iTCP:8001 -sTCP:LISTEN` and kill the PID, or use another port.

## Building CSS

The site does not use the Tailwind CDN. Edit `docs/assets/css/input.css` or `tailwind.config.js`, then:

```bash
npm run build
```

For active development:

```bash
npm run watch
```

The generated file is `docs/assets/css/styles.css`. Tailwind scans `docs/*.html`, so a class used nowhere in that glob gets purged.

## Before the site goes live

Two things are wired but not finished:

**1. Formspree endpoint.** `docs/index.html` has `action="https://formspree.io/f/YOUR_FORM_ID"`. Create a form at formspree.io, point it at your real inbox, and replace `YOUR_FORM_ID`. Until you do, the page detects the placeholder and swaps the form for a direct email block, so nothing silently drops messages. Submission is AJAX and reports success or failure inline.

**2. DNS for miomirlabs.com.** `docs/CNAME` is committed. In the GitHub repo, go to Settings → Pages, set the custom domain to `miomirlabs.com`, and enable Enforce HTTPS once the certificate provisions. At your registrar, point the apex at GitHub Pages:

```
A     @   185.199.108.153
A     @   185.199.109.153
A     @   185.199.110.153
A     @   185.199.111.153
```

Add `CNAME www → olamilawson.github.io` if you want www to resolve.

Also confirm `hello@miomirlabs.com` actually receives mail. It appears in the footer, the contact card, the fallback block, and the JSON-LD.

## Regenerating the social card

`assets/images/og-image.png` is a 1200×630 render of the site's own type. The source HTML lives in git history at `docs/_ogsrc.html`; recreate it, then:

```bash
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu --hide-scrollbars --window-size=1200,630 --screenshot=docs/assets/images/og-image.png docs/_ogsrc.html
```

Delete the source file afterwards so it never publishes. Re-render whenever the hero headline changes.

## Editing content

Everything is in `docs/index.html`. There is no templating system. When you change the hero headline, update the `<title>`, `og:title`, `twitter:title`, and the OG image so they stay in agreement.

The anti-slop rules in `DESIGN.md` are enforced by hand. The patterns that keep creeping back: response-time guarantees, "enterprise-grade" adjectives, and claims of availability that a reader could check and disprove.

## Colors, spacing, and type

Tokens live in `tailwind.config.js` and are documented in `DESIGN.md`. Key values:

- Background: `#F9F7F2` (bone)
- Accent: `#2D0A0A` (oxblood)
- Ink: `#111111`
- Gutter: `24px`
- Section break: `80px`

## Deployment

GitHub Pages publishes from `docs/` on `main`. Pushing to `main` triggers a build. The repository is public, so anything committed is published.

## Security note

A personal access token was used to create the repository during the original handoff. The remote is now the clean `https://github.com/olamilawson/miomir-labs.git` and no token is stored in the repo. Pushing from this machine needs your own credentials or a credential helper.

## Known loose ends

- Formspree ID and DNS, above.
- `miomir design system/` is 15 MB of reference material in a public repo. Consider moving it out.
- No client names, testimonials, or case studies until cleared.
