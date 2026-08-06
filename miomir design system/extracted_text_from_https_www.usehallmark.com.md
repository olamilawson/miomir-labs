/hallmark v1.1 Install [ 0 ](https://github.com/nutlope/hallmark)

01 / 20 — Hum

01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20

T Press `T` to see this page in **20 shapes**. 

02⁄Examples

##  Worked examples. 

One-shotted. No shared theme. No shared layout.

[ $ /hallmark build a guided sourdough app, Hum ](examples/hum-07/) [ $ /hallmark build a repair-café manifesto poster, custom ](examples/custom-04/) [ $ /hallmark build a landing page for a small-batch honey farm ](examples/garden-01/) [ $ /hallmark build a page for an indie risograph print fair ](examples/riso-01/) [ $ /hallmark build a portfolio for an experimental typographer ](examples/press-01/) [ $ /hallmark build a SaaS product page, modern-minimal ](examples/tally/) [ $ /hallmark build a travel booking site, atmospheric ](examples/wayfare/) [ $ /hallmark build a creative studio with playful motion ](examples/bananastudio/) [ $ /hallmark build a software architect personal site ](_tests/06-anya-portfolio/) [ $ /hallmark build a Moroccan fashion brand landing page ](examples/najm/) [ $ /hallmark build a developer infrastructure landing page ](examples/hyperlane/) [ $ /hallmark build a content-extraction API, Cobalt ](examples/cobalt-01/) [ $ /hallmark build a record-label EP page, Carnival ](examples/carnival-01/) [ $ /hallmark build an AI reasoning tool, Lumen ](examples/lumen-01/)

03⁄Skills

##  What it does. 

Hallmark has one default behaviour and three explicit verbs. Each reads a different input and returns a different shape — same opinions, different jobs. 

  1. ### Build (default)

Ask for a page. Get a page that doesn't look generated. Hallmark picks a macrostructure first, then dresses it — and refuses to repeat the same shape twice.

"Build me a landing page for an indie podcast platform." ↓
     1. Invocation(default) — just ask
     2. Readsyour brief, project tokens, framework
     3. Picksmacrostructure → theme → enrichment
     4. Returnsa working page, stamped, slop-tested
     5. Refusesrepeating the last 3 macrostructures

  2. ### Study

Paste a design you admire — a screenshot _or_ a URL. Hallmark reads its structure, not its pixels, and returns a DNA card you can build against. Or say `lock the DNA` to write a portable `design.md` you can hand to another AI tool. Never copies pixels. Tighter refusal layer for the portable spec than for the diagnosis.

/hallmark study together.ai  ·  or paste a screenshot ↓
     1. Invocation`hallmark study <screenshot | URL>`
     2. MacrostructureSplit Hero
     3. Hero archetypeH7 Clipped · copy-left \+ product-mock right
     4. Display roleheavy geometric sans
     5. Body rolesame family · regular weight
     6. Label rolegrotesque · sentence case
     7. Paper bandlight · pure white
     8. Accent huecool blue + magenta · organic gradient
     9. Rhythmleft-copy · right product card · overlapping watercolor blobs
     10. Refusesto ID fonts · to copy pixels

  3. ### Audit

Point Hallmark at a page. Get a ranked punch list of what's wrong — scored against the anti-pattern catalogue. **No edits.** Just the diagnosis.

     1. ✗ Purple-to-pink gradient hero → Solid surface, single accent
     2. ✗ Inter as display + body → Pair distinctive display + body
     3. ✗ Centered everything → Bias the layout, break symmetry
     4. ✗ Sparkle ✨ emoji as badge → Pick an icon library, or drop it
     5. ✗ Gradient pill CTA → Solid fill or outline, single hue

  4. ### Redesign

Same content. Same brand. Different bones. Hallmark throws out the structural fingerprint and rebuilds with a deliberately different one — new section rhythm, new heading placement, new component voice.

Before After Hallmark redesign




_The page_ is the demo.

04⁄Anti-patterns

##  Slop, by name. 

Five tells the LLM reaches for by default. The Hallmark fix beside each. `hallmark audit` flags every one of these on existing code. 

  1. 01

### The purple-gradient hero.

A hero with a background gradient from purple to blue or purple to pink, white centred text. The single most-recognised AI aesthetic.

Hallmark

Pick a single anchor hue. One accent. No gradient backgrounds on heroes. If you want warmth, tint the neutrals.

  2. 02

### Inter as display.

Inter (or Roboto, or Open Sans) used as both display and body, no pairing face. A one-font page is a template page.

Hallmark

Pair a distinctive display face with a refined body. Two faces minimum, never the same family doing both jobs.

  3. 03

### Centred everything.

Headline centred, body centred, button centred, section after section of centred columns. Symmetry as default.

Hallmark

Bias the layout. Wide left margin, narrow right — or the reverse. Breaking symmetry once is enough to register intent.

  4. 04

### The icon-tile feature card.

Rounded rectangle, icon in a coloured square top-left, two-line heading, three-line copy, optional "Learn more →". The universal template.

Hallmark

If you need feature cards, let them be asymmetric — vary sizes, vary alignments, pull the icon inline. Or drop the icon and lead with type.

  5. 05

### The AI nav.

Wordmark hard-left, four inline links centred, CTA button hard-right, sticky on scroll, hairline border-bottom. The shape every LLM ships.

Hallmark

Pick a nav archetype that matches the page's genre — newspaper masthead, terminal command bar, edge-aligned minimal. The nav should tell you what kind of site you're on.




05⁄Foundations

##  Foundations. 

Eight rules that hold across every theme. None of them are settings.

  * A a

### Type

Pair a display face with a body face. Never one font doing both jobs.

  * ### Colour

OKLCH palettes. One anchor hue. The accent stays under five percent.

  * ### Space

A named scale. Multiples of four. No arbitrary 17-pixel paddings.

  * ### Motion

Exponential ease-out. Reduced-motion alternative for every animation.

  * ### Voice

Distinct register per theme. Never the SaaS-default neutral middle.

  * ### Layout

Bias the page. Asymmetric is intentional. Centred everything is a tell.

  * ### Hierarchy

Display, body, label. A weight ladder you can read in two seconds.

  * ### Restraint

Better nothing than bad something. The strongest fail-state is silence.




06⁄With / Without

##  Same prompt. Two different outputs. 

$ /hallmark build a landing page for a dev event launch.

Sonnet 4.6, no Hallmark

Default reach for the gradient. Generic stat strip, made-up Trustpilot rating, "10× faster" feature card.

Sonnet 4.6 + Hallmark

Marquee Hero · Atelier · italic Fraunces. Real bottle, real grape, real region. No fabricated stats.

07⁄Install

##  Install. 

I Run

$ npx skills add nutlope/hallmark Copy Copied

II In

  * Claude Code `~/.claude/skills/hallmark/` auto-detected
  * Cursor `.cursor/rules/hallmark.mdc` auto-detected
  * Codex `~/.codex/skills/hallmark/` auto-detected



III Then

Ask your agent for a UI. `hallmark` attaches itself.

  1. $ hallmark.observe()
  2. > theme connoisseur.



back in a moment

{{eyebrow}}

# {{title}}

{{lede}}

{{ctaLabel}}
```
 
    $npx skills add nutlope/hallmarkCopyCopied

```

{{eyebrow}}

# {{title}}

{{lede}}

{{proofLabel}}

{{proofA}}

{{proofB}}

{{proofC}}

{{cta}} ->

{{eyebrow}}

{{stat}}

{{qualifier}}

{{lede}}

{{cta}} ->

{{eyebrow}}

> "{{quote}}"
> 
> — {{attrib}}

{{lede}}

{{cta}} ->

{{eyebrow}}

{{salutation}}

{{letterBody}}

{{signoff}}  
— Hallmark

{{eyebrow}}

# {{title}}

{{lede}}
```
 
    $npx skills add nutlope/hallmarkCopyCopied

```

_Hallmark._

{{eyebrow}}

# {{title}}

{{lede}}
```
 
    $npx skills add nutlope/hallmarkCopyCopied

```

{{captionA}} · {{captionB}}

{{eyebrow}}

# {{title}}

{{lede}}

{{ctaLabel}}
```
 
    $npx skills add nutlope/hallmarkCopyCopied

```

{{eyebrow}}

# {{title}}

{{lede}}

{{ctaLabel}} {{cta}} ->

/hallmark v1.1 · MMXXVI

Currently in

**Specimen**

Press `T` to cycle · `R` to randomise.

In the catalog

  * 20themes
  * 21macrostructures
  * 57slop-test gates



Read or take a copy

  * [Source on GitHub ->](https://github.com/nutlope/hallmark)
  * Install command
  * Back to top



Made by [Together AI](https://www.together.ai). MIT licensed.