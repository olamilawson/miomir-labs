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
├── docs/                          # published site (upload contents to public_html/)
│   ├── index.html                 # the entire site
│   ├── work.html                  # redirect stubs
│   ├── products.html
│   ├── enterprise.html
│   ├── contact.html
│   ├── .htaccess                  # compression + cache headers (Apache)
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

**2. DNS and hosting for miomirlabs.com.** The site deploys to Hostinger. See the Deployment section below.

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

The site is hosted on **Hostinger**. It is static, so deployment is a file copy: everything inside `docs/` goes into `public_html/`, with `index.html` at the root of `public_html`, not inside a subfolder.

Build the CSS first, then upload:

```bash
npm run build
```

**Via hPanel.** Files → File Manager → `public_html`. Delete whatever is already there, upload a zip of the contents of `docs/`, and extract in place. To rebuild that zip:

```bash
cd docs && zip -r ~/Desktop/miomir-hostinger.zip . -x ".DS_Store" "*/.DS_Store"
```

**Via SFTP.** Credentials are under hPanel → Files → FTP Accounts. Upload the contents of `docs/` to `public_html/`. Include the dotfile `.htaccess`; many FTP clients hide dotfiles by default, so turn on hidden files or the compression and cache headers silently go missing.

**Domain and TLS.** Add `miomirlabs.com` in hPanel → Domains. Either point your registrar's nameservers at Hostinger (`ns1.dns-parking.com`, `ns2.dns-parking.com`) or set an A record for the apex to the server IP shown in hPanel. Then hPanel → Security → SSL to issue the free certificate, and turn on **Force HTTPS** once it is active. HTTPS redirection lives in that toggle rather than in `.htaccess`, so the file is safe to upload before the certificate exists.

Do not also point the domain at GitHub Pages. One host serves the domain, and the previous GitHub Pages A records would take it away from Hostinger. The repository still holds the source; it no longer publishes the site, and `docs/CNAME` has been removed because it only ever meant anything to GitHub Pages.

After the first deploy, check `https://miomirlabs.com/robots.txt` and `https://miomirlabs.com/sitemap.xml` resolve, then submit the sitemap in Google Search Console.

## Security note

A personal access token was used to create the repository during the original handoff. The remote is now the clean `https://github.com/olamilawson/miomir-labs.git` and no token is stored in the repo. Pushing from this machine needs your own credentials or a credential helper.

## Known loose ends

- Formspree ID and DNS, above.
- `miomir design system/` is 15 MB of reference material in a public repo. Consider moving it out.
- No client names, testimonials, or case studies until cleared.
