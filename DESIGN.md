# Miomir Labs — Design Source

This document is the single source of truth for the Miomir Labs website. It consolidates the original design brief, the chosen visual system, and the anti-slop rules that now govern copy and design.

## Identity

Miomir Labs is an engineering and research house in Lagos. It builds systems of record for clients, runs a small number of its own products, and does applied research on AI in production.

The domain is **ledgers, identity, records, and money movement**: the layer underneath a business where errors compound and outages are visible.

The name is Slavic. *Mio* means dear; *mir* means peace. The reading the brand takes: the measure of infrastructure is how rarely anyone has to think about it.

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

The current site has four pages:

- `index.html` — Home. Who Miomir Labs is, what it does at a glance, and its approach.
- `work.html` — What we do. The four practice areas in plain language.
- `enterprise.html` — For organizations. How engagements work.
- `contact.html` — Contact. A simple form and direct email.

Navigation labels: Home, Work, Enterprise, Contact.

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

## File inventory

```
site/
├── index.html
├── work.html
├── enterprise.html
├── contact.html
├── assets/
│   ├── css/main.css
│   ├── js/main.js
│   └── images/logo.svg
```

## History

- Original brief: `miomir-design-brief.md`
- Explored directions: `miomir design system/functionalist_precision/DESIGN.md`, `functionalist_specimen/DESIGN.md`, `industrial_minimalism/DESIGN.md`
- Chosen direction: functionalist specimen, light variant, with the copy rewritten to remove AI-generated institutional fiction.
