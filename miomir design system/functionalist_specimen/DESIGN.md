---
name: Functionalist Specimen
colors:
  surface: '#fff8f7'
  surface-dim: '#e2d8d6'
  surface-bright: '#fff8f7'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#fdf1f0'
  surface-container: '#f7ebea'
  surface-container-high: '#f1e6e4'
  surface-container-highest: '#ebe0df'
  on-surface: '#201a1a'
  on-surface-variant: '#514342'
  inverse-surface: '#352f2f'
  inverse-on-surface: '#faeeed'
  outline: '#847372'
  outline-variant: '#d6c2c0'
  surface-tint: '#84504e'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#34100f'
  on-primary-container: '#ae7572'
  inverse-primary: '#f8b6b2'
  secondary: '#5e5e5b'
  on-secondary: '#ffffff'
  secondary-container: '#e1dfdb'
  on-secondary-container: '#63635f'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#051d31'
  on-tertiary-container: '#71869e'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdad7'
  primary-fixed-dim: '#f8b6b2'
  on-primary-fixed: '#34100f'
  on-primary-fixed-variant: '#693a38'
  secondary-fixed: '#e4e2dd'
  secondary-fixed-dim: '#c8c6c2'
  on-secondary-fixed: '#1b1c19'
  on-secondary-fixed-variant: '#474744'
  tertiary-fixed: '#d0e4ff'
  tertiary-fixed-dim: '#b3c9e3'
  on-tertiary-fixed: '#051d31'
  on-tertiary-fixed-variant: '#34485f'
  background: '#fff8f7'
  on-background: '#201a1a'
  surface-variant: '#ebe0df'
  bone: '#F9F7F2'
  oxblood: '#2D0A0A'
  ink-black: '#111111'
  technical-gray: '#8C8C8C'
  hairline-stroke: rgba(45, 10, 10, 0.15)
typography:
  display-xl:
    fontFamily: Bodoni Moda
    fontSize: 72px
    fontWeight: '700'
    lineHeight: 80px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Bodoni Moda
    fontSize: 48px
    fontWeight: '600'
    lineHeight: 56px
  headline-lg-mobile:
    fontFamily: Bodoni Moda
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  label-technical:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.05em
  index-marker:
    fontFamily: JetBrains Mono
    fontSize: 10px
    fontWeight: '700'
    lineHeight: 12px
spacing:
  unit: 4px
  gutter: 24px
  margin-wide: 120px
  margin-narrow: 48px
  section-break: 80px
---

## Brand & Style

This design system shifts the "Functionalist Precision" aesthetic from a software tool into an **Industrial Design Specimen**. It draws inspiration from editorial archive catalogs and precision engineering documentation. The brand personality is authoritative, archival, and uncompromisingly technical, yet refined through high-contrast editorial flourishes.

The visual style is a hybrid of **Minimalism** and **Brutalism**, characterized by:
- **Editorial Intent:** High-contrast serif typography that feels like a prestigious masthead or a museum exhibit placard.
- **Precision Engineering:** Monospaced technical labels and hairline rules that evoke architectural blueprints.
- **Intentional Asymmetry:** A "biased" layout strategy that rejects the safe, centered defaults of standard SaaS web design in favor of dynamic, page-turning tension.
- **Tactile Materiality:** A "Bone" surface that feels like heavy, unbleached paper rather than a digital screen.

## Colors

The palette is anchored in high-contrast "Printed Matter" tones. 

- **The Foundation:** The background is exclusively **Bone** (`#F9F7F2`), providing a warm, archival surface that reduces the harshness of pure white while maintaining an intellectual tone.
- **The Ink:** Typography and primary UI elements use **Ink Black** (`#111111`) or a deep **Oxblood** (`#2D0A0A`) to ensure maximum legibility and a sharp, "stamped" quality.
- **The Technical Layer:** **Technical Gray** and low-opacity **Hairline Stroke** are used for organizational elements like grid lines, rules, and "01/20" index markers.
- **Constraint:** Chromatic accents are restricted to less than 5% of the visual area, reserved for specific status indicators or critical callouts.

## Typography

The typography follows a strict pairing philosophy to prevent a "templated" appearance:

1.  **Display (Bodoni Moda):** Used for large-scale headlines. It provides high-contrast strokes that evoke high-end editorial and luxury publishing.
2.  **Body (Hanken Grotesk):** A clean, functionalist grotesque used for all reading text. It is neutral and versatile, acting as the bridge between the expressive display and technical labels.
3.  **Labels (JetBrains Mono):** Used for technical callouts, status tags, and index numbers. This monospaced font reinforces the "Industrial Specimen" narrative.

**Formatting Rules:**
- Headlines should use sentence case or lowercase for a modern editorial feel; avoid Title Case.
- Technical labels must always be in All Caps with tracking increased by 5%.

## Layout & Spacing

This system utilizes a **Biased Fluid Grid** to create intentional visual tension.

- **Asymmetry:** Layouts should favor a "Wide Left, Narrow Right" bias. For example, a main content block may span columns 1-8 of a 12-column grid, leaving columns 9-12 for technical side-notes or empty white space.
- **Rhythm:** All spacing is derived from a 4px base unit. 
- **Section Breaks:** Instead of color blocks or heavy shadows, use **Hairline Rules** (1px Oxblood at 15% opacity) to separate sections.
- **Technical Indexing:** Every major section should be preceded by a small monospaced index (e.g., "01 / ARCHIVE") placed in the top-left margin to reinforce the "Specimen" feel.
- **Mobile Reflow:** On mobile devices, the bias collapses into a single-column stack, but maintains generous 24px side margins to preserve the feeling of a printed page.

## Elevation & Depth

This design system is intentionally flat, eschewing the "software default" of soft ambient shadows. Depth is communicated through:

- **Tonal Layering:** Using "Paper Bands"—subtle shifts in the Bone-tinted surface—to distinguish functional areas.
- **Hairline Borders:** Defining hierarchy through 1px strokes rather than volume.
- **Textual Overlays:** Large, low-opacity serif characters can occasionally sit behind UI elements to create a sense of foreground and background without using Z-axis shadows.
- **High-Contrast Stacking:** Elements that require focus (like modals) use a solid Oxblood or Black border with a sharp, zero-blur "hard shadow" offset by 4px or 8px, mimicking a physical stamp or a cut piece of cardstock.

## Shapes

The shape language is **Sharp (0px)**. 

To align with the "Industrial Design Specimen" aesthetic, all UI elements—buttons, cards, input fields, and tags—must have 90-degree corners. Rounded corners are strictly forbidden as they introduce a softness that undermines the precision of the system. 

When structural containment is needed, use a 1px solid hairline border rather than a filled container.

## Components

### Buttons
Buttons are solid Oxblood blocks with white JetBrains Mono text (all caps), or outlined blocks with sharp corners. On hover, buttons should invert colors instantly (no easing) to mimic the mechanical snap of a physical switch.

### Lists
Lists are styled as "Index Entries." Each item is separated by a hairline bottom border. The item title is in Hanken Grotesk, while metadata (date, status, or category) is pushed to the right in JetBrains Mono.

### Inputs
Text inputs consist of a single bottom hairline rule. The label sits above the input in a small monospaced font. Focus states are indicated by the hairline rule thickening to 2px or changing to solid Oxblood.

### Cards
Cards are "Editorial Frames." They should not have shadows. Instead, they use a 1px border. If a card contains an image, the image should be flush to the edges with no internal padding, mirroring a printed photograph in a catalog.

### Technical Tags
Small, rectangular containers with 1px borders. These are used for status indicators (e.g., `[ STATUS: STABLE ]`). Use a monospaced font and strictly uppercase text.