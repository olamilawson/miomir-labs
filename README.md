# Miomir Labs

Static website for Miomir Labs, an engineering and research house in Lagos.

- **Live site:** https://miomirlabs.com/
- **Repository:** https://github.com/olamilawson/miomir-labs

## Structure

One page. `docs/index.html` holds every section, reached by anchor:

| Anchor | Section |
|--------|---------|
| `#work` | Practice areas |
| `#products` | Prager and Prai |
| `#enterprise` | For organizations |
| `#approach` | Engineering philosophy |
| `#team` | Tobi Lawson and Emmanuel Modebelu |
| `#contact` | Contact |

`work.html`, `products.html`, `enterprise.html`, and `contact.html` are redirect stubs for older inbound links.

## Local preview

```bash
cd docs && python3 -m http.server 8001
```

Open http://localhost:8001.

## Build CSS

```bash
npm install && npm run build
```

For development:

```bash
npm run watch
```

## Notes

- The published site lives in `docs/`. The VPS clones this repo and nginx serves that folder, so deploying is a `git pull` on the server: `./scripts/deploy.sh` then `--live`. See `HANDOFF.md`.
- Fonts are self-hosted and subset. No font or CSS CDN.
- The contact form needs a real Formspree ID before launch. See `HANDOFF.md`.
- `DESIGN.md` is the source of truth for positioning, tokens, and the copy rules.
