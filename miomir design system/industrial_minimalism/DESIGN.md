---
name: Industrial Minimalism
colors:
  surface: '#200e13'
  surface-dim: '#200e13'
  surface-bright: '#4a3338'
  surface-container-lowest: '#1a090e'
  surface-container-low: '#29161b'
  surface-container: '#2e1a1f'
  surface-container-high: '#392429'
  surface-container-highest: '#452f34'
  on-surface: '#fddae0'
  on-surface-variant: '#ccc6bc'
  inverse-surface: '#fddae0'
  inverse-on-surface: '#402a30'
  outline: '#959087'
  outline-variant: '#4a463f'
  surface-tint: '#ccc6ba'
  primary: '#ffffff'
  on-primary: '#333028'
  primary-container: '#e9e2d6'
  on-primary-container: '#68645b'
  inverse-primary: '#625e55'
  secondary: '#f0be6a'
  on-secondary: '#422c00'
  secondary-container: '#724e00'
  on-secondary-container: '#f4c26d'
  tertiary: '#ffffff'
  on-tertiary: '#313035'
  tertiary-container: '#e6e1e8'
  on-tertiary-container: '#666369'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#e9e2d6'
  primary-fixed-dim: '#ccc6ba'
  on-primary-fixed: '#1e1b14'
  on-primary-fixed-variant: '#4a463e'
  secondary-fixed: '#ffdeac'
  secondary-fixed-dim: '#f0be6a'
  on-secondary-fixed: '#281900'
  on-secondary-fixed-variant: '#5f4100'
  tertiary-fixed: '#e6e1e8'
  tertiary-fixed-dim: '#c9c5cc'
  on-tertiary-fixed: '#1c1b20'
  on-tertiary-fixed-variant: '#48464b'
  background: '#200e13'
  on-background: '#fddae0'
  surface-variant: '#452f34'
  oxblood-base: '#1E0C11'
  oxblood-light: '#421A23'
  bone: '#EFE8DC'
  brass: '#C89A4A'
  sage: '#8AA48F'
typography:
  headline-lg:
    fontFamily: Hanken Grotesk
    fontSize: 48px
    fontWeight: '300'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg-mobile:
    fontFamily: Hanken Grotesk
    fontSize: 32px
    fontWeight: '300'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Hanken Grotesk
    fontSize: 24px
    fontWeight: '400'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.2'
    letterSpacing: 0.05em
  label-caps:
    fontFamily: JetBrains Mono
    fontSize: 10px
    fontWeight: '700'
    lineHeight: '1.0'
    letterSpacing: 0.1em
spacing:
  unit: 4px
  gutter: 24px
  margin-sm: 16px
  margin-md: 40px
  margin-lg: 80px
  max-width: 1280px
---

## Brand & Style

This design system embodies a "Quiet Engineering" aesthetic, blending the precision of industrial architecture with the warmth of an archival laboratory. The brand personality is intellectual, disciplined, and understated, prioritizing functional clarity over decorative flourish. 

The visual style is **Industrial Minimalism**. It relies on high whitespace density, rigid structural grids, and a sophisticated, low-light color palette. The goal is to evoke the feeling of high-end hardware documentation or a custom-built physical terminal. Every element must feel intentional and structural, using thin line-work and monospaced accents to signal technical rigor and precision.

## Colors

The palette is centered on a deep, atmospheric Oxblood base, providing a high-contrast foundation for Bone typography. This creates a "dark mode" that feels like a physical surface rather than a digital screen.

- **Oxblood Base (#1E0C11):** The primary canvas. Used for all major backgrounds.
- **Bone (#EFE8DC):** The primary ink. Used for all body text, headings, and structural borders.
- **Brass (#C89A4A):** The mechanical highlight. Used sparingly for interactive cues, callouts, and key data points.
- **Sage (#8AA48F):** The functional indicator. Reserved strictly for "success" states, active statuses, or neutral technical readouts.
- **Oxblood Light (#421A23):** Used for subtle layering, hover states on dark surfaces, and recessed containers.

## Typography

The typographic hierarchy utilizes a modern, sharp sans-serif for narrative content and a technical monospace for operational data.

- **Sans-Serif (Hanken Grotesk):** Use for all headings and body copy. Headlines should use lighter weights (300) to maintain an architectural feel. 
- **Monospace (JetBrains Mono):** Use for labels, status indicators, numerical data, and small navigational elements. This font acts as the "industrial stamp" of the interface.
- **Formatting:** Keep line heights generous for body text to maintain the "high whitespace" aesthetic. Labels should frequently use uppercase with increased tracking to mimic technical plate engravings.

## Layout & Spacing

The layout is governed by a **Fixed Grid** system that emphasizes horizontal "ledgers" and vertical dividers. 

- **Grid Model:** A 12-column grid with 24px gutters. However, the visual structure is defined by thin borders (`1px`) in Bone or Brass that separate sections, rather than background blocks.
- **Ledger Style:** Content should often be arranged in a "Commitments vs. Costs" ledger format—split columns where the left side contains the label/metric and the right side contains the value/description, separated by a thin horizontal rule.
- **Whitespace:** Use aggressive margins (80px+) between major sections to allow the dark background to "breathe."
- **Breakpoints:**
  - **Mobile:** Single column, margins reduced to 16px.
  - **Desktop (1024px+):** Full 12-column grid, max-width constrained to 1280px for readability.

## Elevation & Depth

This system avoids traditional shadows to maintain its industrial, flat-plan nature. Depth is communicated through **Tonal Layers** and **Bold Borders**.

- **Surface Tiers:** The primary background is Oxblood Base. Inset areas or secondary cards use Oxblood Light.
- **Line-work:** Use `1px` solid borders in `Bone` at 10% opacity for most structural divisions. For active or high-priority elements, use `1px` solid `Brass` lines.
- **Glassmorphism:** Reserved only for floating navigation or overlays, using a very subtle `blur(8px)` and a `1px` Bone (10%) border. No heavy glow or multi-colored blurs.

## Shapes

The shape language is strictly **Sharp (0px)**. To maintain the architectural and industrial influence, there are no rounded corners in the design system. Buttons, input fields, cards, and containers must all have 90-degree angles. This reinforces the "engineered" and "precise" nature of the product.

## Components

- **Buttons:** Rectangular with `1px` solid borders. Primary buttons use a Brass border with Bone text. Secondary buttons use a Bone border (20% opacity). Hover states should fill the background with Oxblood Light or a very subtle tint of the border color.
- **Chips/Status:** Use the `label-caps` typography. Status indicators (Sage) should be a small square (8px) next to the text rather than a rounded pill.
- **Inputs:** Simple `1px` bottom-border (Bone) that turns to Brass on focus. Labels should be `label-mono` positioned above the input.
- **Lists:** Ledger-style. Each item is separated by a `1px` horizontal line (Bone at 10%). Use monospaced numbers for ordered lists.
- **Cards:** No shadows. Cards are defined by a `1px` Bone (10%) border. For "featured" content, use a Brass corner accent (a 10px line on the top and right edge).
- **Data Tables:** High-density, monospaced text. Headers should be all-caps with a Bone (20%) background tint.