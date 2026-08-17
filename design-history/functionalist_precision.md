---
name: Functionalist Precision
colors:
  surface: '#faf9f9'
  surface-dim: '#dbdad9'
  surface-bright: '#faf9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f3f3'
  surface-container: '#efeded'
  surface-container-high: '#e9e8e8'
  surface-container-highest: '#e3e2e2'
  on-surface: '#1b1c1c'
  on-surface-variant: '#474741'
  inverse-surface: '#2f3031'
  inverse-on-surface: '#f2f0f0'
  outline: '#777770'
  outline-variant: '#c8c7be'
  surface-tint: '#5f5f59'
  primary: '#5f5f59'
  on-primary: '#ffffff'
  primary-container: '#f2f0e9'
  on-primary-container: '#6d6d67'
  inverse-primary: '#c8c6c0'
  secondary: '#954742'
  on-secondary: '#ffffff'
  secondary-container: '#fe9b94'
  on-secondary-container: '#78302d'
  tertiary: '#5f5e5e'
  on-tertiary: '#ffffff'
  tertiary-container: '#f2efee'
  on-tertiary-container: '#6d6c6c'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e4e2dc'
  primary-fixed-dim: '#c8c6c0'
  on-primary-fixed: '#1b1c18'
  on-primary-fixed-variant: '#474742'
  secondary-fixed: '#ffdad7'
  secondary-fixed-dim: '#ffb3ad'
  on-secondary-fixed: '#3d0506'
  on-secondary-fixed-variant: '#77302d'
  tertiary-fixed: '#e5e2e1'
  tertiary-fixed-dim: '#c8c6c5'
  on-tertiary-fixed: '#1c1b1b'
  on-tertiary-fixed-variant: '#474746'
  background: '#faf9f9'
  on-background: '#1b1c1c'
  surface-variant: '#e3e2e2'
typography:
  headline-xl:
    fontFamily: Hanken Grotesk
    fontSize: 64px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Hanken Grotesk
    fontSize: 40px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Hanken Grotesk
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.2'
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 11px
    fontWeight: '500'
    lineHeight: '1.0'
    letterSpacing: 0.1em
spacing:
  unit: 4px
  gutter: 24px
  margin-desktop: 64px
  margin-mobile: 20px
  hairline: 1px
---

## Brand & Style

This design system is rooted in the principles of Braun-era functionalism and Swiss-style graphic design. It is engineered for industrial designers and systems architects who value structural integrity over decorative flourish. The aesthetic is quiet, prestigious, and highly technical, signaled by a rigorous adherence to grid systems and a total absence of soft "tech" trends like gradients or rounded corners.

The emotional response should be one of profound reliability and high-fidelity precision. Every element on the screen exists for a functional reason, mirroring the physical permanence of a well-designed product.

**Visual Movement:** Minimalism & Modernism (Swiss School).
**Core Attributes:** Sharp, structural, archival, and architectural.

## Colors

The palette is centered on **Bone (#F2F0E9)**, which serves as the primary surface color to evoke the tactile quality of premium matte plastics or heavy-weight archival paper. This off-white base reduces the digital "glare" typical of pure white, leaning into a physical product feel.

**Oxblood (#4A0E0E)** is reserved for structural accents, primary call-to-actions, and precision markers. It provides a sophisticated, high-contrast focal point that signals importance without the urgency of a standard "bright" red.

**Obsidian (#1A1A1A)** is used for primary typography and hairline borders, ensuring technical legibility. Secondary labels and "ghost" grid lines utilize a neutral mid-grey to maintain hierarchy without cluttering the visual field.

## Typography

The typographic system relies on **Hanken Grotesk** for its neutral, highly legible sans-serif qualities. Large headings are used aggressively to define space, often set with tight letter spacing for a disciplined, architectural look.

To signal technical precision, **JetBrains Mono** (Monospace) is utilized for metadata, technical specifications, and navigational labels (e.g., "SYSTEM_REF_01"). These are often set in small caps or all caps with increased tracking to mimic the engraving found on physical industrial hardware.

Whitespace is treated as a core typographic element; text blocks should never feel crowded.

## Layout & Spacing

This design system employs a **strict 12-column fixed grid** for desktop, emphasizing mathematical balance. Alignment is absolute; elements should snap to grid lines with zero tolerance for "optical centering" that breaks the rhythm.

**Hairline Borders (1px):** Use these to define sectors and separate content modules. The grid itself should often be visible through these subtle dividers, creating a blueprint-like interface.

**Spacing Rhythm:**
- **Desktop:** Generous external margins (64px+) to create a "gallery" effect for product imagery.
- **Mobile:** A 4-column grid with reduced margins, focusing on vertical stacking and clear modular separation.
- **Internal Spacing:** Use a base 4px unit for all padding and margins to ensure consistent density.

## Elevation & Depth

Depth is conveyed through **Physical Realism** rather than digital layers. 

1.  **Floating Compositions:** Inspired by high-end product photography, primary objects (like 3D models or hardware renders) should "float" on the Bone surface using soft, multi-directional ambient shadows.
2.  **Zero-Stacking:** UI elements themselves (buttons, cards) do not use shadows. They are flat, defined by 1px Obsidian or Oxblood outlines.
3.  **Tonal Inversion:** To indicate focus or an active state, a container may switch from Bone to Obsidian, creating a "cut-out" effect in the layout.

## Shapes

The shape language is strictly **Sharp (0px)**. All containers, buttons, and input fields must have right-angle corners. This communicates structural integrity and aligns with the industrial manufacturing metaphor. 

The only exceptions are circular buttons for specific "physical toggle" simulations (like a dial or a hardware switch), which must be perfect circles to maintain geometric purity.

## Components

- **Buttons:** Sharp-edged boxes with 1px borders. Primary buttons use an Oxblood background with Bone text. Secondary buttons use a Bone background with Obsidian borders.
- **Technical Labels (Chips):** Small, monospaced text blocks wrapped in a 1px frame. Use these for status codes or module identifiers.
- **Inputs:** Simple bottom-border only or full 1px rectangles. No inner shadows. The focus state uses a 2px Oxblood border.
- **Cards:** Defined by hairline borders. No background change from the main surface unless the card is "Active," in which case it may take a subtle light grey tint.
- **Lists:** Separated by horizontal hairlines. Metadata is always right-aligned in monospace typography.
- **Data Tables:** Highly structured with visible vertical and horizontal rules, mimicking a technical specification sheet.