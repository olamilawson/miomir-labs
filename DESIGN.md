# Miomir Labs — Design Source

This document is the single source of truth for the Miomir Labs website. It consolidates the original design brief, the chosen visual system, and the anti-slop rules that now govern copy and design.

## Identity

Miomir Labs is an engineering and research house in Lagos. It builds systems of record for clients, runs a small number of its own products, and does applied research on AI in production.

The domain is **ledgers, identity, records, and money movement**: the layer underneath a business where errors compound and outages are visible.

The name is Slavic. *Mio* means dear; *mir* means peace. The reading the brand takes: the measure of infrastructure is how rarely anyone has to think about it.

### Positioning

The site leads with **correctness**, not breadth. The thesis: AI made code cheap to produce, and did nothing to make it cheap to verify. The expensive work moved to deciding whether a system is right and proving it stays right. That is the work Miomir Labs sells.

The reference point is TigerBeetle, whose credibility comes from narrowness and checkable claims rather than from category language. "Foundation for digital infrastructure" is a category and survives no follow-up question. Copy should stay at the altitude of the specific thing being built.

Two products, Prager and Prai, appear as **evidence of the thesis rather than a catalog**. The house is the hero; the products show it runs its own foundations. Both are live; neither has public API access yet, and the site must not imply otherwise.

**Prager is a superapp, not a messenger.** It began as a messenger for teams and now covers the whole business a small owner runs from a phone: invoicing, payments, stock, and supplier payouts. Copy that calls it a chat app undersells it and describes a product that no longer exists. The concrete details worth keeping: the owner stays in the thread where the sale started, and the phone is the only computer they have.

Prai's Nigerian Pidgin training is the most defensible claim on the site. Keep it specific.

### Proof, and its limits

A buyer evaluating an eighteen-month infrastructure commitment reviewed the site in August 2026 and found the writing and the positioning working, and the proof missing. Three gaps: no named people, no delivered engagements, and two products marked live that nobody outside can open.

What the site does about that, and what it deliberately does not:

- **No case studies, and no invented ones.** There is no delivered client work to cite yet. The Work section states capability and earns belief through specificity instead: named registries, named regimes, the failure modes someone who has done the work would name. Specificity substitutes for a track record until there is one. It does not pretend to be one.
- **Regulation is named.** The NDPA, the CBN open banking guidelines, and PCI DSS appear in the Approach section and in the JSON-LD. The claim is that the systems are designed against them. It is not a claim of certification or registration, and it must not drift into one.
- **Products are evidence, not a catalogue.** Prager and Prai stay two compact cards. They exist on the page to show the house builds and operates what it designs, and Prager carries the only claim on the site that Miomir does merchant-facing mobile product work rather than backend alone. Resist expanding this into a product showcase; Miomir sells engineering, and a shop window changes what the firm appears to be.
- **Still open: people.** A firm this size is underwritten as individuals. A section naming the CEO and the CTO is the largest remaining gap and is pending their details.

Prager overlaps the businesses of some prospective clients. That is a commercial question about IP and carve-outs, settled in a contract rather than on this page. Do not solve it by hiding the product, since a buyer who discovers it later reads the omission as concealment.

## Job of the site

A visitor should decide within ten seconds that these people are serious, and within a minute that they are unusually disciplined. The site exists to signal competence, not to persuade.

Audience, in order:

1. Someone at a bank, funded company, or marketplace deciding whether to trust this house with infrastructure. Older, sceptical, has been burned by a vendor before.
2. An engineer or researcher considering joining. Reads the site for evidence of taste.

Both want proof and neither wants persuasion.

## Tone

Sober. Confident without volume. The register of a firm that turns work down.

Copy is short. Every block is roughly a third the length of a typical marketing site. Design for sparseness rather than accommodating it.

### Anti-slop rules

These rules apply to every line of copy and every layout decision.

- No filler phrases, adverbs, or passive voice.
- Every sentence needs a human subject.
- Avoid binary contrasts and dramatic pull-quotes.
- No vague extremes: *every*, *always*, *never*.
- Put the reader in the room; use *you* over *people*.
- Vary sentence rhythm; do not lean on em dashes.
- Avoid generic AI design defaults: gradient heroes, single font, centered everything, icon-tile cards, numbered feature lists unless genuinely sequential, speculative technical fiction.
- No fictional protocols, clearance levels, specimen forms, fake locations, or invented job requisitions.
- No claims about innovation, clarity, excellence, or transformation.

## Structure

The site is **one page**. `index.html` carries every section; navigation is in-page anchors.

| Anchor | Section | Content |
|--------|---------|---------|
| `#hero` | — | The correctness thesis and the two calls to action. |
| `#work` | 01 / Practice Areas | Records, identity, settlement, applied research. Plus "How we work". |
| `#products` | 02 / Products | Prager and Prai, as proof the house runs its own foundations. |
| `#enterprise` | 03 / Enterprise | Core principles and the four-stage engagement. |
| `#approach` | 04 / Engineering Philosophy | Designing for the constraint. |
| `#contact` | 05 / Contact | Form and direct email. |

Navigation labels: Work, Products, Enterprise, Approach, Contact.

`work.html`, `products.html`, `enterprise.html`, and `contact.html` remain as `noindex, follow` redirect stubs pointing at the matching anchor, so older inbound links keep resolving. They hold no content and are not in the sitemap.

## Visual system

The chosen direction is a restrained editorial/specimen aesthetic: bone ground, oxblood and ink accents, hairline rules, sharp corners, and a three-way type pairing. It is a Lagos engineering house, not a dark-terminal fantasy or a navy SaaS template.

### Palette

| Token | Value | Use |
|-------|-------|-----|
| bone | `#F9F7F2` | primary background |
| surface | `#fff8f7` | secondary/tinted surfaces |
| surface-container-low | `#fdf1f0` | hover/containers |
| surface-container | `#f7ebea` | form backgrounds |
| surface-container-high | `#f1e6e4` | section tints |
| surface-container-highest | `#ebe0df` | strong section tints |
| surface-dim | `#e2d8d6` | placeholders/borders |
| ink-black | `#111111` | primary typography |
| oxblood | `#2D0A0A` | display type, accents, focus, CTAs |
| technical-gray | `#8C8C8C` | secondary labels, metadata |
| on-surface-variant | `#514342` | body text on tinted surfaces |
| hairline-stroke | `rgba(45, 10, 10, 0.15)` | rules and borders |

Chromatic accents stay under 5% of the visual area.

### Typography

| Token | Font | Size | Weight | Line height | Notes |
|-------|------|------|--------|-------------|-------|
| display-xl | Bodoni Moda | 72px / 26px mobile | 700 | 80px / 1.05 mobile | display headline |
| headline-lg | Bodoni Moda | 48px | 600 | 56px | desktop section headlines |
| headline-lg-mobile | Bodoni Moda | 32px | 600 | 40px | mobile section headlines |
| body-lg | Hanken Grotesk | 18px | 400 | 28px | introductory paragraphs |
| body-md | Hanken Grotesk | 16px | 400 | 24px | body copy |
| label-technical | JetBrains Mono | 12px | 500 | 16px | uppercase labels, tracking 0.05em |
| index-marker | JetBrains Mono | 10px | 700 | 12px | metadata, tracking 0.05em |

### Spacing

- Unit: 4px
- Gutter: 24px
- Margin narrow: 48px
- Margin wide: 120px
- Section break: 80px
- Max content width: 1280px

### Shapes and elevation

- All corners are sharp (0px radius).
- No drop shadows except for a single hard offset shadow on the enterprise CTA block.
- Depth comes from tonal layering and hairline borders, not blur or glow.
- One anchor hue (bone/oxblood/ink) with accents under 5%.

### Motion

- Respect `prefers-reduced-motion`.
- Transitions are short and functional.
- No scattered hover effects; no animated data packets or speculative topology diagrams.

## Constraints

- No stock photography or people in golden light.
- No abstract data visualisations or gradient meshes.
- No logo carousel. No client names until cleared.
- No numbered 01/02/03 feature cards unless the content is genuinely a sequence.
- No fictional institutional language.
- Fast on a Nigerian mobile connection: self-hosted or subset fonts, no heavy assets.
- Responsive to 360px. Visible keyboard focus. Semantic headings. Reduced motion honoured. Contrast passing AA.

## Discoverability

The canonical origin is `https://miomirlabs.com/`. Every absolute URL in metadata points there, so changing domain is a find-and-replace on that string.

- **Canonical + description** on `index.html`; `noindex, follow` on the four redirect stubs so they never compete with the real page.
- **Open Graph and Twitter** tags with a 1200×630 card at `assets/images/og-image.png`, generated from `docs/_ogsrc.html` (deleted after render) using the site's own fonts. Regenerate it with headless Chrome if the headline changes.
- **JSON-LD** `@graph` in the `<head>`: `Organization` (with address, email, logo, `makesOffer` for both products), `WebSite`, and `ProfessionalService`. This is what LLM crawlers and rich results read, so keep product status honest here too.
- **`robots.txt`** allows everything and points to the sitemap. **`sitemap.xml`** lists the single canonical URL.
- Headings run h1 → h2 → h3 with no skipped levels, sections carry `aria-labelledby`, and the engagement stages are an ordered list because they are genuinely sequential.

## File inventory

```
├── docs/                          # published site (nginx docroot on the VPS)
│   ├── index.html                 # the entire site
│   ├── work.html                  # redirect stub → /#work
│   ├── products.html              # redirect stub → /#products
│   ├── enterprise.html            # redirect stub → /#enterprise
│   ├── contact.html               # redirect stub → /#contact
│   ├── robots.txt
│   ├── sitemap.xml
│   ├── favicon.svg / favicon.ico
│   ├── .nojekyll
│   └── assets/
│       ├── css/
│       │   ├── input.css          # Tailwind source + base styles
│       │   └── styles.css         # generated, minified production CSS
│       ├── fonts/
│       │   ├── fonts.css          # @font-face rules
│       │   └── *.woff2            # self-hosted, subset
│       └── images/
│           ├── logo.svg
│           ├── og-image.png       # 1200×630 social card
│           └── apple-touch-icon.png
├── design-history/                # the three explored directions
├── package.json
├── tailwind.config.js
├── .gitignore
└── DESIGN.md
```

## History

- Original brief: `miomir-design-brief.md`
- Explored directions: `design-history/functionalist_precision.md`, `design-history/functionalist_specimen.md`, `design-history/industrial_minimalism.md`. The full 15 MB exploration, with mockup screenshots and prototype HTML, was moved out of the repo on 2026-08-17 to `Desktop/Personal/Mine/miomir-design-archive/`.
- Chosen direction: functionalist specimen, light variant, with the copy rewritten to remove AI-generated institutional fiction.
