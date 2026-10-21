# Miomir Labs

Static website for Miomir Labs, an engineering and research house in Lagos.

- **Live site:** https://miomirlabs.com/
- **Repository:** https://github.com/olamilawson/miomir-labs

## Structure

One page plus field notes. `docs/index.html` holds every main section, reached by anchor:

| Anchor | Section |
|--------|---------|
| `#ledger` | The double-entry signature: commitments and their costs |
| `#work` | Practice areas |
| `#enterprise` | For organizations |
| `#approach` | Engineering philosophy |
| `#notes` | Field notes linking to `docs/notes/` articles |
| `#team` | Tobi Lawson and Emmanuel Modebelu |
| `#contact` | Contact |

`work.html`, `enterprise.html`, and `contact.html` are redirect stubs for older inbound links.

## Local preview

```bash
cd docs && python3 -m http.server 8001
```

No Python? `npx http-server docs -p 8001` works the same way.

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
