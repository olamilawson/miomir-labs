# Miomir Labs — Handoff

## Project

Static website for Miomir Labs, an engineering and research house in Lagos.

- **Repository:** https://github.com/olamilawson/miomir-labs (public)
- **Branch:** `main`
- **Canonical URL:** https://miomirlabs.com/
- **Local preview:** http://localhost:8001

## What the site is

**One page plus field notes.** `docs/index.html` holds the main page; navigation is in-page anchors: `#hero`, `#ledger`, `#work`, `#enterprise`, `#approach`, `#notes`, `#team`, `#contact`. `#ledger` is the double-entry signature element from the original brief: what the house commits to, paired with what each commitment costs it.

`docs/notes/` holds standalone technical articles linked from the Notes section. They carry no client work; the reasoning itself is the checkable evidence. Match `docs/notes/what-a-ledger-has-to-prove.html` for the template when adding a new note, and add its URL to `docs/sitemap.xml`.

`work.html`, `enterprise.html`, and `contact.html` are `noindex, follow` redirect stubs that send old inbound links to the matching anchor. They carry no content.

The positioning leads with correctness rather than category breadth. The firm's own products, Prager and Prai, were removed from the site on 2026-08-26 because both are unfinished; see the Positioning section of `DESIGN.md` before restoring them or rewriting any copy.

## Repository layout

```
Miomir/
├── docs/                          # published site (nginx docroot on the VPS)
│   ├── index.html                 # the entire site
│   ├── work.html                  # redirect stubs
│   ├── enterprise.html
│   ├── contact.html
│   ├── robots.txt
│   ├── sitemap.xml
│   ├── favicon.svg / favicon.ico
│   ├── .nojekyll                  # disables Jekyll
│   └── assets/
│       ├── css/input.css          # Tailwind source + base styles
│       ├── css/styles.css         # generated production CSS
│       ├── fonts/                 # self-hosted, subset woff2 + fonts.css
│       └── images/                # logo.svg, og-image.png, apple-touch-icon.png, team/
├── nginx/                         # reference copy of the live nginx directives
├── miomir-design-brief.md         # original brief
├── design-history/                # the three explored directions (28 KB)
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

**1. Formspree endpoint.** `docs/index.html` has `action="https://formspree.io/f/YOUR_FORM_ID"`. Create a form at formspree.io pointed at `build@miomirlabs.com`, then replace `YOUR_FORM_ID` with the id from the endpoint it gives you. Until then the page shows the direct email block instead of the form, so nothing is dropped. Submission is AJAX and reports success or failure inline.

**2. DNS and hosting for miomirlabs.com.** The site deploys to Hostinger. See the Deployment section below.

The contact address is `build@miomirlabs.com`, live since 2026-08-26. It appears in the footer, the contact card, the fallback block, the AJAX error message, and the JSON-LD.

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

The VPS holds a **clone of this repository** at `/var/www/miomirlabs.com`, and nginx serves its `docs/` subdirectory:

```
root /var/www/miomirlabs.com/docs;
```

So deploying is a `git pull` on the server, not a file upload. No earlier commit recorded this because there was nothing to record; the server simply tracks the repo. `docs/assets/css/styles.css` is committed, so the server needs no build step.

The same VPS serves roughly eighteen other domains, including `prager.my`, `prai.dev`, `praiki.com`, and `tobilawson.com`, all under `/var/www/`. Never run a destructive command there without checking the path.

### Deploying

Push to GitHub first, then:

```bash
./scripts/deploy.sh
```

That reports what the server is on, what origin is on, how far behind it is, and whether it has local edits. Then:

```bash
./scripts/deploy.sh --live
```

Which runs `git pull --ff-only` over SSH. Set `DEPLOY_HOST` in `scripts/deploy.env`, copied from `scripts/deploy.env.example`. That file is gitignored, so the host stays out of the public repo.

Doing it by hand is two steps. First open a shell on the VPS, using the host and credentials from hPanel:

```bash
ssh root@srv518191
```

Then, at the server's own prompt, run this on its own. Do not prefix it with `ssh`, and do not wrap it in quotes:

```bash
cd /var/www/miomirlabs.com && git pull
```

Confirm nginx is serving the new build without leaving the box:

```bash
curl -sI http://localhost | head -1 && curl -s http://localhost | grep -c build@miomirlabs.com
```

### The clone reports every file as modified

Files in the server clone carry mode 755 while git recorded 644, so git flags a modification on every file including binary fonts. It is permission noise, not content. Fixed once with:

```bash
cd /var/www/miomirlabs.com && git config core.filemode false
```

That setting is already applied. If `git status` ever lists files again, they are real edits made on the server; inspect them before pulling rather than reaching for `git checkout .`.

### nginx

Compression and cache headers live in the nginx server block on the VPS at `/etc/nginx/sites-available/miomirlabs.com`, not in this repo. nginx ignores `.htaccess`, so an `.htaccess` here would do nothing. `nginx/miomirlabs.com.conf.example` holds a reference copy of the directives worth having. Apply changes on the VPS, then:

```bash
nginx -t && systemctl reload nginx
```

## Security note

A personal access token was used to create the repository during the original handoff. The remote is now the clean `https://github.com/olamilawson/miomir-labs.git` and no token is stored in the repo. Pushing from this machine needs your own credentials or a credential helper.

## Known loose ends

- **Formspree is deliberately unwired.** `docs/index.html` still has `action="https://formspree.io/f/YOUR_FORM_ID"`. The form should deliver to a real `@miomirlabs.com` inbox, so wiring it waits on purchasing the custom email for the domain. Until then the page detects the placeholder and shows the direct email block instead, so no message is dropped without the sender knowing. This is intentional; do not "fix" it by deleting the fallback.
- **Emmanuel Modebelu has no profile link yet.** A commented slot sits under his role in the People section; add a confirmed LinkedIn or GitHub URL there. Tobi Lawson links to `tobilawson.com`.
- **The CAC RC number is unstated.** A commented slot sits in the footer above the copyright line; add the registration number once confirmed. It is a checkable claim, so verify it before shipping.
- **No analytics.** A comment in the `index.html` head marks where a self-hosted GoatCounter or Plausible snippet goes. Until wired, there is no signal on whether visitors reach `#contact`.
- **Current status is scaffolded but hidden.** A commented `#status` section sits between Notes and People in `index.html`. Uncomment it only with real work-in-progress items in honest states.
- No client names, testimonials, or case studies until cleared.
