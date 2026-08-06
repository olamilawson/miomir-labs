# Miomir Labs

Static website for Miomir Labs, an engineering and research house in Lagos.

- **Live site:** https://olamilawson.github.io/miomir-labs/
- **Repository:** https://github.com/olamilawson/miomir-labs

## Pages

- Home
- Work
- Enterprise
- Contact

## Local preview

```bash
cd docs
python3 -m http.server 8001
```

Open http://localhost:8001.

## Build CSS

```bash
npm install
npm run build
```

For development:

```bash
npm run watch
```

## Notes

- The published site lives in `docs/`.
- Fonts are self-hosted; no external font or CSS CDN is used.
- See `HANDOFF.md` and `DESIGN.md` for full details.
