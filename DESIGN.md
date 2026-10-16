---
version: alpha
name: Gujuri Alekha | Blog
description: >-
  Editorial research design system for a Quarto blog that publishes Jupyter
  notebooks on data science, machine learning, generative AI, RAG and agents.
  Articles read like research papers; the site chrome behaves like a modern
  developer-tool SaaS. Light theme by default with a full dark theme.
colors:
  # Light theme (default)
  primary: "#4F46E5"
  primary-hover: "#4338CA"
  primary-subtle: "#F1F0FD"
  on-primary: "#FFFFFF"
  canvas: "#FFFFFF"
  surface: "#F8FAFC"
  surface-raised: "#F1F5F9"
  hairline: "#E2E8F0"
  hairline-strong: "#CBD5E1"
  ink: "#0F172A"
  body: "#334155"
  muted: "#5F6B7D"
  success: "#047857"
  warning: "#A44B08"
  danger: "#B91C1C"
  # Dark theme (toggle)
  dark-primary: "#A5B4FC"
  dark-primary-ui: "#818CF8"
  dark-primary-hover: "#C7D2FE"
  dark-primary-subtle: "#1A1E29"
  dark-on-primary: "#0B0D12"
  dark-canvas: "#0B0D12"
  dark-surface: "#12151C"
  dark-surface-raised: "#181C25"
  dark-hairline: "#232836"
  dark-hairline-strong: "#2F3545"
  dark-ink: "#E8EAF0"
  dark-body: "#B6BDCB"
  dark-muted: "#8A93A6"
  dark-success: "#34D399"
  dark-warning: "#FBBF24"
  dark-danger: "#F87171"
  # Data visualisation (categorical, in this order)
  viz-1: "#4F46E5"
  viz-2: "#0D9488"
  viz-3: "#D97706"
  viz-4: "#E11D48"
  viz-5: "#0284C7"
  viz-6: "#475569"
  dark-viz-1: "#818CF8"
  dark-viz-2: "#2DD4BF"
  dark-viz-3: "#FBBF24"
  dark-viz-4: "#FB7185"
  dark-viz-5: "#38BDF8"
  dark-viz-6: "#94A3B8"
typography:
  headline-display:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: 600
    lineHeight: 1.1
    letterSpacing: -0.03em
    fontFeature: '"cv11", "ss01"'
  headline-lg:
    fontFamily: Inter
    fontSize: 40px
    fontWeight: 600
    lineHeight: 1.15
    letterSpacing: -0.025em
  headline-md:
    fontFamily: Inter
    fontSize: 28px
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: -0.02em
  headline-sm:
    fontFamily: Inter
    fontSize: 21px
    fontWeight: 600
    lineHeight: 1.35
    letterSpacing: -0.015em
  title-md:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: -0.01em
  prose-lg:
    fontFamily: Source Serif 4
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.7
  dek-lg:
    fontFamily: Source Serif 4
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.55
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: -0.011em
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: -0.006em
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.4
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0.04em
  code-md:
    fontFamily: JetBrains Mono
    fontSize: 14.5px
    fontWeight: 400
    lineHeight: 1.6
  caption-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  full: 9999px
spacing:
  0: 0px
  1: 4px
  2: 8px
  3: 12px
  4: 16px
  5: 24px
  6: 32px
  7: 48px
  8: 64px
  9: 96px
  nav-height: 60px
  prose-width: 680px
  breakout-width: 880px
  margin-width: 240px
  container-width: 1200px
components:
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    height: 60px
  top-nav-link-active:
    textColor: "{colors.ink}"
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.label-md}"
    rounded: "{rounded.sm}"
    padding: 8px 16px
    height: 36px
  button-primary-hover:
    backgroundColor: "{colors.primary-hover}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.label-md}"
    rounded: "{rounded.sm}"
    padding: 8px 16px
    height: 36px
  button-secondary-hover:
    backgroundColor: "{colors.surface}"
  button-ghost:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.label-md}"
    rounded: "{rounded.sm}"
    padding: 8px 12px
    height: 36px
  button-ghost-hover:
    backgroundColor: "{colors.surface-raised}"
    textColor: "{colors.ink}"
  tag-pill:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.body}"
    typography: "{typography.label-mono}"
    rounded: "{rounded.full}"
    padding: 3px 10px
  tag-pill-hover:
    backgroundColor: "{colors.primary-subtle}"
    textColor: "{colors.primary}"
  category-tab:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.label-md}"
    rounded: "{rounded.sm}"
    padding: 6px 12px
  category-tab-active:
    backgroundColor: "{colors.surface-raised}"
    textColor: "{colors.ink}"
  post-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    padding: 20px 0px
  post-row-hover:
    textColor: "{colors.primary}"
  post-card-featured:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    padding: 24px
  article-eyebrow:
    textColor: "{colors.primary}"
    typography: "{typography.label-mono}"
  article-title:
    textColor: "{colors.ink}"
    typography: "{typography.headline-lg}"
  article-dek:
    textColor: "{colors.body}"
    typography: "{typography.dek-lg}"
  article-meta:
    textColor: "{colors.muted}"
    typography: "{typography.label-mono}"
  article-prose:
    textColor: "{colors.body}"
    typography: "{typography.prose-lg}"
    width: 680px
  toc-link:
    textColor: "{colors.muted}"
    typography: "{typography.body-sm}"
  toc-link-active:
    textColor: "{colors.primary}"
  code-block:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.code-md}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  code-fold-summary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.label-mono}"
    rounded: "{rounded.full}"
    padding: 4px 12px
  cell-output:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.code-md}"
    padding: 4px 0px 4px 16px
  inline-code:
    backgroundColor: "{colors.surface-raised}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xs}"
    padding: 1px 5px
  callout-note:
    backgroundColor: "{colors.primary-subtle}"
    textColor: "{colors.body}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  callout-tip-title:
    textColor: "{colors.success}"
    typography: "{typography.label-md}"
  callout-warning-title:
    textColor: "{colors.warning}"
    typography: "{typography.label-md}"
  callout-important-title:
    textColor: "{colors.danger}"
    typography: "{typography.label-md}"
  divider:
    backgroundColor: "{colors.hairline}"
    height: 1px
  divider-strong:
    backgroundColor: "{colors.hairline-strong}"
    height: 1px
  figure-caption:
    textColor: "{colors.muted}"
    typography: "{typography.caption-sm}"
  data-table-header:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.label-md}"
  series-nav-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    padding: 16px 20px
  cite-block:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.body}"
    typography: "{typography.code-md}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  follow-card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xl}"
    padding: 24px
  search-modal:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    width: 640px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.body-sm}"
    padding: 48px 0px
  # Dark-theme variants (applied under the dark toggle)
  page-dark:
    backgroundColor: "{colors.dark-canvas}"
    textColor: "{colors.dark-body}"
  heading-dark:
    textColor: "{colors.dark-ink}"
  meta-dark:
    textColor: "{colors.dark-muted}"
  card-dark:
    backgroundColor: "{colors.dark-surface}"
    textColor: "{colors.dark-ink}"
  card-dark-hover:
    backgroundColor: "{colors.dark-surface-raised}"
  link-dark:
    textColor: "{colors.dark-primary}"
  link-dark-hover:
    textColor: "{colors.dark-primary-hover}"
  button-primary-dark:
    backgroundColor: "{colors.dark-primary-ui}"
    textColor: "{colors.dark-on-primary}"
  divider-dark:
    backgroundColor: "{colors.dark-hairline}"
    height: 1px
  divider-strong-dark:
    backgroundColor: "{colors.dark-hairline-strong}"
    height: 1px
  callout-note-dark:
    backgroundColor: "{colors.dark-primary-subtle}"
    textColor: "{colors.dark-body}"
  callout-tip-title-dark:
    textColor: "{colors.dark-success}"
  callout-warning-title-dark:
    textColor: "{colors.dark-warning}"
  callout-important-title-dark:
    textColor: "{colors.dark-danger}"
---

# Design System: Gujuri Alekha | Blog

This file is the single source of truth for how the blog looks and behaves. It follows the
[DESIGN.md spec](https://github.com/google-labs-code/design.md) (version `alpha`): the YAML
front matter holds the normative tokens, and the sections below explain how to use them. The
first eight sections are the spec's core sections, in spec order; the remaining sections are
project-specific additions.

Tokens prefixed `dark-` are the dark-theme counterparts of the unprefixed light tokens. Any
component token that references a light colour switches to the matching `dark-` token in dark
mode (for example `{colors.surface}` becomes `{colors.dark-surface}`).

## Overview

**Style name: editorial research, SaaS-grade chrome.**

The blog publishes long-form, reproducible notebooks: prose, Python code, cell output, charts,
tables and maths. The design borrows its reading experience from research blogs
(Lilian Weng, Distill, Anthropic Engineering) and its interface from modern developer tools
(Linear, Vercel, Supabase).

- **Articles read like papers.** A serif reading face in a 680px column, numbered figures,
  a table of contents in the right margin, a "cite this article" block at the end.
- **Everything around the article feels like a product.** A light, translucent sticky navbar,
  compact buttons, mono metadata, hairline borders, a command-style search overlay.
- **One accent.** Indigo is the only brand colour. It marks links, the active state and
  primary actions, and nothing else.
- **Depth from borders, not glow.** Surfaces are separated by 1px hairlines and small steps
  in background tone. Shadows appear only on hover and on overlays.
- **Content is the hero.** The homepage leads with real articles, not decoration. Charts in
  posts use the same palette as the site, so the article and the brand look like one system.
- **Light by default.** Light mode is the default because long technical reading is easier on
  light backgrounds; the dark theme is a complete, equal-quality alternative behind the toggle.

What this design is **not**: no neon glow orbs, no animated gradient text, no glassmorphism
beyond the navbar, no infinite animations, no emoji as UI icons, no invented metrics in
decorative graphics.

## Colors

### Neutrals

| Role | Light | Dark | Use |
|---|---|---|---|
| **canvas** | `#FFFFFF` | `#0B0D12` | Page background, card background |
| **surface** | `#F8FAFC` | `#12151C` | Code blocks, table header, follow card, input fill |
| **surface-raised** | `#F1F5F9` | `#181C25` | Hover fill, active tab, inline code |
| **hairline** | `#E2E8F0` | `#232836` | All 1px borders and dividers |
| **hairline-strong** | `#CBD5E1` | `#2F3545` | Input borders, chart axes, focus-adjacent borders |
| **ink** | `#0F172A` | `#E8EAF0` | Headings, titles, emphasised text |
| **body** | `#334155` | `#B6BDCB` | Paragraph text, UI text |
| **muted** | `#5F6B7D` | `#8A93A6` | Metadata, captions, placeholder, TOC links |

Text is never pure `#000` or `#FFF`. The dark canvas is near-black with a slight blue cast,
matching the indigo accent.

### Accent

| Role | Light | Dark | Use |
|---|---|---|---|
| **primary** | `#4F46E5` | `#A5B4FC` | Links, active TOC item, eyebrow labels, focus ring |
| **primary-ui** | `#4F46E5` | `#818CF8` | Filled primary button background |
| **primary-hover** | `#4338CA` | `#C7D2FE` | Link and button hover |
| **primary-subtle** | `#F1F0FD` | `#1A1E29` | Note callouts, tag hover, selected rows |
| **on-primary** | `#FFFFFF` | `#0B0D12` | Text on a filled primary button |

### Semantic

Used only inside callouts and status text, never as decoration.

| Role | Light | Dark | Callout |
|---|---|---|---|
| **success** | `#047857` | `#34D399` | `callout-tip` |
| **warning** | `#A44B08` | `#FBBF24` | `callout-warning` |
| **danger** | `#B91C1C` | `#F87171` | `callout-important` / errors |
| **info** | primary | primary | `callout-note` |

Callout backgrounds are the semantic colour at 8% (light) or 10% (dark) over the canvas.

### Data visualisation

Every chart in every notebook uses this categorical order, so a reader sees the same colour
mean "series 1" across the whole blog.

| # | Light | Dark | Name |
|---|---|---|---|
| 1 | `#4F46E5` | `#818CF8` | Indigo (matches the accent) |
| 2 | `#0D9488` | `#2DD4BF` | Teal |
| 3 | `#D97706` | `#FBBF24` | Amber |
| 4 | `#E11D48` | `#FB7185` | Rose |
| 5 | `#0284C7` | `#38BDF8` | Sky |
| 6 | `#475569` | `#94A3B8` | Slate (baselines, "other", actuals) |

These tokens are applied in notebooks (see the matplotlib snippet under Notebook Content
Patterns), not by site components, so `design.md lint` reports them as orphaned; that is
expected. All six light colours are at least 3:1 against white and all six dark colours at
least 6:1 against the dark canvas, which meets WCAG's 3:1 rule for graphical objects. Use slate for
"actual" or "baseline" lines and indigo for the model being discussed. Never encode meaning in
colour alone: pair it with line style (solid = actual, dashed = forecast) or direct labels.

### Contrast (computed, WCAG 2.x)

| Text token (light · dark) | Light on canvas / surface / raised | Dark on canvas / surface / raised |
|---|---|---|
| ink `#0F172A` · `#E8EAF0` | 17.85 / 17.06 / 16.30 | 16.16 / 15.18 / 14.17 |
| body `#334155` · `#B6BDCB` | 10.35 / 9.90 / 9.45 | 10.30 / 9.68 / 9.04 |
| muted `#5F6B7D` · `#8A93A6` | 5.40 / 5.17 / 4.93 | 6.30 / 5.92 / 5.52 |
| primary `#4F46E5` · `#A5B4FC` | 6.29 / 6.01 / 5.74 | 9.75 / 9.16 / 8.55 |
| primary-hover `#4338CA` · primary-ui `#818CF8` | 7.90 / 7.55 / 7.21 | 6.52 / 6.12 / 5.72 |
| success `#047857` · `#34D399` | 5.48 / 5.24 / 5.01 | 10.11 / 9.50 / 8.87 |
| warning `#A44B08` · `#FBBF24` | 5.85 / 5.59 / 5.34 | 11.64 / 10.94 / 10.21 |
| danger `#B91C1C` · `#F87171` | 6.47 / 6.18 / 5.91 | 7.03 / 6.60 / 6.16 |

On-primary text: white on `#4F46E5` is 6.29:1; `#0B0D12` on `#818CF8` is 6.52:1. Every text
pair passes AA (4.5:1). Hairlines are intentionally low contrast (1.2–1.3:1) because they
separate surfaces and carry no information.

## Typography

Three families, all on Google Fonts. This replaces the current four (Space Grotesk is dropped).

| Family | Role | Weights to load |
|---|---|---|
| **Inter** | UI, navigation, headings, tables, captions | 400, 500, 600 |
| **Source Serif 4** | Article prose and the article dek | 400, 400 italic, 600 |
| **JetBrains Mono** | Code, cell output, dates, tags, eyebrow labels | 400, 500 |

Fallbacks: Inter → `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif`;
Source Serif 4 → `Charter, Georgia, serif`; JetBrains Mono → `ui-monospace, "SF Mono", Consolas, monospace`.

### Scale

| Token | Family | Size | Weight | Line height | Tracking | Use |
|---|---|---|---|---|---|---|
| headline-display | Inter | `clamp(36px, 5vw, 48px)` | 600 | 1.1 | -0.03em | Homepage hero only |
| headline-lg | Inter | `clamp(32px, 4vw, 40px)` | 600 | 1.15 | -0.025em | Article title (h1) |
| headline-md | Inter | 28px | 600 | 1.25 | -0.02em | Article h2, page section titles |
| headline-sm | Inter | 21px | 600 | 1.35 | -0.015em | Article h3 |
| title-md | Inter | 18px | 600 | 1.4 | -0.01em | Article h4, post titles in lists, card titles |
| dek-lg | Source Serif 4 | 20px | 400 | 1.55 | 0 | Article subtitle (the `description`) |
| prose-lg | Source Serif 4 | 18px | 400 | 1.7 | 0 | Article body text, lists, blockquotes |
| body-md | Inter | 16px | 400 | 1.6 | -0.011em | UI copy, homepage and About text |
| body-sm | Inter | 14px | 400 | 1.5 | -0.006em | TOC, footer, secondary UI |
| label-md | Inter | 14px | 500 | 1.4 | 0 | Buttons, tabs, table headers |
| label-mono | JetBrains Mono | 12px | 500 | 1.4 | 0.04em, UPPERCASE | Eyebrows, dates, tags, reading time |
| code-md | JetBrains Mono | 14.5px | 400 | 1.6 | 0 | Code blocks and cell output |
| caption-sm | Inter | 14px | 400 | 1.5 | 0 | Figure and table captions |

On screens under 576px, prose-lg drops to 17px/1.65 and headline-md to 24px.

### Rules

- **Maximum weight is 600.** No 700, 800 or 900 anywhere, including the navbar brand.
- **Headings are sans, reading text is serif.** Never set long prose in Inter inside an
  article, and never set UI in the serif.
- **Balance headings** with `text-wrap: balance`; use `text-wrap: pretty` on prose paragraphs.
- **Numbers in tables and metadata** use `font-variant-numeric: tabular-nums`.
- **Eyebrows and metadata are mono uppercase** with 0.04em tracking (dates, "TIME SERIES TRACK",
  "12 MIN READ"). Tags are mono lowercase.
- **Links in prose** are primary-coloured with a 1px underline at 30% opacity, offset 3px; the
  underline goes to full opacity on hover. Links in UI chrome are not underlined.
- **Line length** stays between 60 and 80 characters for prose (the 680px column gives about 72
  at 18px Source Serif 4).

## Layout

### Spacing

4px base with an 8px rhythm: `4, 8, 12, 16, 24, 32, 48, 64, 96`. Use only these values.
Paragraph spacing in prose is 1.1em; space above h2 is 56px, above h3 is 36px.

### Widths

| Token | Value | Use |
|---|---|---|
| container-width | 1200px | Navbar, homepage, footer content width |
| prose-width | 680px | Article body column |
| breakout-width | 880px | Wide figures, tables and code that need room |
| margin-width | 240px | Right column: TOC, sidenotes, margin figures |
| nav-height | 60px | Sticky navbar |

Section spacing on the homepage: 64px on mobile, 96px on desktop.

### Page templates

**Homepage**, top to bottom:

1. **Intro hero**: left-aligned on the canvas, no dark panel. Eyebrow (`DATA SCIENCE · ML · AI`),
   headline-display (one short line), one sentence of dek in body-md, two buttons
   (primary "Read the latest", secondary "Start the Time Series track"). Optional right-hand
   visual must be a real chart from a published notebook, linked to that article.
2. **Tracks**: one card per learning series (currently "Time Series Track · 2 articles"). Each
   card shows the track name, a one-line description, the number of parts and a "Start" link.
3. **Latest articles**: category tabs (All, Time Series, Statistics, Machine Learning, Python)
   above an editorial list of post rows. An optional single featured card can sit above the list.
4. **Author card**: avatar, name, role, two-sentence bio, links (Portfolio, LinkedIn, GitHub).
5. **Footer.**

**Article page**: the 680px prose column centred in the container, left sidebar for the
current track, right margin column for the TOC. Order: series banner, article header, body,
series navigation, "Cite this article", follow card, footer.

**About page**: single 680px column, author card at the top, then experience and skills as
plain sections. No decorative cards inside cards.

**404 page**: headline-md, one sentence, and links to the homepage and the latest articles.

## Elevation & Depth

| Level | Light treatment | Dark treatment | Use |
|---|---|---|---|
| 0 Flat | canvas, no border | dark-canvas, no border | Page background |
| 1 Hairline | `1px solid {colors.hairline}` | `1px solid {colors.dark-hairline}` | Cards, code, tables, inputs, follow card |
| 2 Lifted | hairline + `0 1px 2px rgba(15,23,42,.04), 0 6px 16px -6px rgba(15,23,42,.10)` | dark-surface-raised fill + `inset 0 1px 0 rgba(255,255,255,.05)` | Card hover, dropdowns, tooltips |
| 3 Overlay | `0 16px 40px -12px rgba(15,23,42,.25)` + hairline | `0 16px 40px -12px rgba(0,0,0,.6)` + dark-hairline | Search modal, lightbox |

- The navbar is the only translucent element: canvas at 85% opacity with
  `backdrop-filter: blur(12px) saturate(160%)` and a hairline bottom border.
- Dark mode does not use drop shadows for depth; it steps the surface tone up instead.
- No glows, no coloured shadows, no inner glows on buttons.

## Shapes

| Token | Value | Use |
|---|---|---|
| none | 0px | Post rows, dividers, full-bleed figures |
| xs | 4px | Inline code, small badges, TOC active bar |
| sm | 6px | Buttons, inputs, category tabs, search field |
| md | 8px | Code blocks, callouts, images, figures, tables |
| lg | 12px | Cards (featured post, track, series navigation), search modal |
| xl | 16px | Follow card, author card |
| full | 9999px | Tag pills, avatars, the "Show code" chip |

Nested radii shrink inward: a 12px card containing an image gives the image 8px.

## Components

Every interactive component has five states: default, hover, focus-visible, active and
disabled. Unless stated otherwise: hover changes colour only (150ms), focus-visible shows a
2px primary ring with 2px offset, active scales to 0.98, disabled drops to 50% opacity and
removes pointer events.

### Top navigation (`top-nav`)
- 60px tall, sticky, translucent canvas (see Elevation), hairline bottom border.
- Left: wordmark "Gujuri Alekha" in Inter 600 16px ink, followed by `/ blog` in label-mono muted.
- Centre-left links: Home, Tracks, About in label-md body; active link is ink with a 2px
  primary underline 18px below the text baseline.
- Right: search trigger (ghost button with a `⌘K` / `Ctrl K` hint in label-mono), theme
  toggle (ghost icon button), GitHub and LinkedIn icon buttons, and a secondary "Portfolio" button.
- Under 992px: links collapse into a menu button; search and theme toggle stay visible.

### Buttons
| Variant | Default | Hover | Notes |
|---|---|---|---|
| Primary | primary fill, on-primary text | primary-hover fill | One per view. Dark: primary-ui fill, dark-on-primary text |
| Secondary | canvas fill, ink text, hairline-strong border | surface fill | Default choice for most actions |
| Ghost | transparent, body text | surface-raised fill, ink text | Icon buttons, nav actions |

All buttons: 36px tall (44px tap area on touch via padding), label-md, radius sm, 16px
horizontal padding, icons 16px with an 8px gap. Small variant: 30px tall, 12px padding.

### Tag pill and category tabs
- **Tag pill**: label-mono lowercase, surface fill, hairline border, radius full, 3px × 10px.
  Hover: primary-subtle fill and primary text. Used in post rows and the article meta row.
- **Category tabs**: a row of label-md text tabs with 6px × 12px padding and radius sm.
  Inactive: muted text. Hover: surface-raised fill. Active: surface-raised fill, ink text.
  Tabs filter the listing; they are buttons with `aria-pressed`, never emoji pills.

### Post row (homepage list)
- Grid: date column (label-mono muted, 120px) | content column.
- Content: title (title-md ink, 2-line clamp), one-line description (body-sm body),
  then tags and reading time (label-mono muted).
- Rows are separated by a hairline; padding 20px top and bottom; no card, no thumbnail.
- Hover: title turns primary; the whole row is the link target.
- Under 768px the date moves above the title.

### Featured post card (optional, one at most)
- Level 1 card, radius lg, 24px padding, two columns at 992px and above: text left,
  thumbnail right at 1.91:1 (the Open Graph ratio) with radius md.
- Eyebrow "FEATURED" in label-mono primary, title in headline-sm, dek in body-md.
- Hover: level 2 lift; the thumbnail scales to at most 1.02 over 300ms.

### Track card
- Level 1 card, radius lg, 20px padding. Track name (title-md), description (body-sm),
  "2 PARTS" (label-mono muted), "Start →" text link in primary.

### Article header
1. **Eyebrow**: track name in label-mono primary, for example `TIME SERIES TRACK · PART 1`.
2. **Title**: headline-lg ink, balanced.
3. **Dek**: the front-matter `description` in dek-lg body, max 2 lines.
4. **Meta row**: date · reading time · tags, in label-mono muted, separated by `·`.
5. **Divider**: hairline, 32px below the meta row.

### Table of contents (right margin)
- Sticky at `top: 84px` (nav + 24px). Title "On this page" in label-mono muted.
- Links in body-sm muted, 6px vertical rhythm, h3 entries indented 12px.
- Active item: primary text with a 2px primary bar on its left edge (radius xs).
- Hidden under 1200px; Quarto's collapsible TOC appears at the top of the article instead.

### Code block (`code-block`)
- surface fill, hairline border, radius md, 16px × 20px padding, code-md.
- Top-right: language label in label-mono muted (`PYTHON`) and a ghost copy button that
  shows "Copied" for 1.5s after use.
- Syntax theme: GitHub Light / GitHub Dark Dimmed, with the AA-corrected token colours
  (variables `#B34700`, alerts `#C62828` in light mode).
- Long lines wrap (`code-overflow: wrap`); never a horizontal scrollbar inside prose.
- **"Show code" fold**: when code is folded, the summary is a chip (label-mono, radius full,
  hairline border) reading `SHOW CODE`, placed directly above the output it belongs to.

### Cell output (`cell-output`)
- No fill. A 2px hairline-strong left rule and 16px left padding separate output from code.
- Text output in code-md body; DataFrame tables use the data table style below.
- Stderr, warnings and progress bars are never published.

### Inline code
- code-md at 0.88em, surface-raised fill, radius xs, 1px × 5px padding, ink text.

### Callouts
| Type | Use | Left rule and icon | Fill |
|---|---|---|---|
| note | Definitions, context | primary | primary-subtle |
| tip | Practical advice | success | success at 8% / 10% |
| warning | Pitfalls, assumptions | warning | warning at 8% / 10% |
| important | Things that break results | danger | danger at 8% / 10% |

Anatomy: 3px left rule, radius md, 16px × 20px padding, title in label-md ink with a 16px
line icon, body in prose-lg at 17px. Never stack two callouts back to back.

### Figure
- Centered, max width prose-width by default; charts that need room break out to
  breakout-width.
- Image radius md with a hairline border. In dark mode, charts keep a white plate so
  matplotlib output stays legible.
- Caption below in caption-sm muted, prefixed "Figure N." in label-md ink (Quarto
  cross-reference numbering).
- Click to zoom (lightbox) on every chart. Every image has alt text.
- Images below the first screen load lazily.

### Data table
- Inter 14px with tabular numbers, header row in label-md ink on surface, hairline
  separators between rows, no vertical borders, 10px × 12px cell padding.
- Wide tables sit in a horizontal scroll container with a hairline border and radius md.
- Caption above the table in caption-sm, prefixed "Table N.".

### Display math
- Rendered with KaTeX, centered, 1.05em, with 24px vertical margin.
- Long equations scroll horizontally inside their own container, never the page.

### Series navigation
- **Top banner** (articles in a track): surface fill, radius md, one line: "Part 1 of 2 in the
  Time Series Track" with a link to the track.
- **Bottom cards**: two series-nav cards side by side (stacked under 768px). Each shows
  "← PREVIOUS" or "NEXT →" in label-mono muted and the title in title-md. Level 1, hover level 2.

### Cite this article (`cite-block`)
- Heading "Cite this article" in headline-sm, then a code-md BibTeX block on surface with a
  copy button. Generated from Quarto's `citation` metadata.

### Follow card (`follow-card`)
- Ends every article. surface fill, hairline border, radius xl, 24px padding.
- Text: "Get new notebooks as they're published" in title-md, one line of body-sm.
- Actions: secondary "RSS feed", ghost "LinkedIn", ghost "GitHub". There is no newsletter, so
  no email form is designed.

### Search overlay (`search-modal`)
- Opens from the navbar or `/` and `Ctrl/⌘ K`. 640px wide, radius lg, Level 3, top offset 12vh.
- Input row: 48px, body-md, no border, hairline below. Results: title in label-md ink, excerpt
  in body-sm muted, matched text in primary-subtle. Arrow keys move, Enter opens, Esc closes.

### Author card
- Level 1, radius xl, 24px padding. 56px avatar (radius full), name in title-md, role in
  label-mono muted, bio in body-md, then ghost buttons for Portfolio, LinkedIn and GitHub.

### Footer
- Hairline top border, 48px vertical padding, container width.
- Left: "© 2026 Gujuri Alekha" and one-line description in body-sm muted.
- Right: links (Articles, About, RSS, Portfolio, GitHub, LinkedIn) in body-sm muted, ink on hover.

## Do's and Don'ts

### Do
- Use indigo for links, active states, focus and the single primary action per view, and
  nowhere else.
- Separate surfaces with 1px hairlines and tone steps; lift only on hover.
- Keep article prose in Source Serif 4 at 18px in the 680px column.
- Give every chart a caption, a figure number, alt text and the shared palette.
- Put dates, tags, reading time and eyebrows in label-mono.
- Respect `prefers-reduced-motion` and keep every animation under 300ms.
- Check new colour pairs against the contrast table before using them.
- Keep the homepage hero real: link any visual to the article it came from.

### Don't
- Don't use more than one accent colour or add gradients to text.
- Don't use font weights above 600 (the current navbar brand and hero use 800).
- Don't run infinite animations (the current navbar brand and accent words animate forever).
- Don't add glow orbs, neon shadows or glassmorphism outside the navbar.
- Don't show invented numbers in decorative charts (the current hero shows a made-up RMSE).
- Don't use emoji as icons in navigation, tabs or headings.
- Don't put muted text on anything darker than surface-raised in light mode.
- Don't publish notebook stderr, warnings, progress bars or Colab widgets.
- Don't let code, tables or equations scroll the whole page sideways.

## Responsive Behavior

| Breakpoint | Width | Behaviour |
|---|---|---|
| xs | < 576px | Single column, 16px gutters, prose 17px, nav collapses to menu + search + theme |
| sm | ≥ 576px | 24px gutters |
| md | ≥ 768px | Post rows show the date column; series cards sit side by side |
| lg | ≥ 992px | Full navbar links; track sidebar appears on article pages; featured card goes two-column |
| xl | ≥ 1200px | Right-margin TOC appears; figures may break out to 880px |
| xxl | ≥ 1400px | Container stays at 1200px; extra space becomes margin |

- Touch targets are at least 44 × 44px on touch devices.
- The breakout width never exceeds the viewport minus the gutters.
- Tables and long equations scroll inside their own container.

## Motion

| Token | Duration | Easing | Use |
|---|---|---|---|
| fast | 150ms | `cubic-bezier(.4, 0, .2, 1)` | Colour, border and opacity changes |
| base | 200ms | `cubic-bezier(.22, 1, .36, 1)` | Card lift, dropdowns, TOC bar movement |
| overlay | 250ms | `cubic-bezier(.22, 1, .36, 1)` | Search modal: fade in and scale from 0.98 |

- Hover lifts move at most 2px; image zoom on hover is at most 1.02.
- No animation loops. No parallax. Smooth scrolling for in-page anchors only.
- Under `prefers-reduced-motion: reduce`, all transitions drop to 0ms except opacity fades.

## Notebook Content Patterns

How notebook parts map to components:

| Notebook element | How to write it | Renders as |
|---|---|---|
| First raw cell | YAML front matter: `title`, `description`, `date`, `categories`, `order`, `image-alt` | Article header |
| Section headings | `##` for top-level sections (the title is the only h1) | h2 / h3 with TOC entries |
| Chart cell | `#| label: fig-<name>`, `#| fig-cap: "..."`, `#| fig-alt: "..."` | Numbered figure with caption and alt text |
| Wide chart or table | `#| column: page-inset-right` | Breakout to 880px |
| Note in markdown | `::: {.callout-note}` … `:::` | Note callout |
| Side remark | `[^1]` footnote (with `reference-location: margin`) | Sidenote in the margin |
| DataFrame output | Plain `df.head()`; no Colab interactive widgets | Data table |
| Equations | `$...$` and `$$...$$` | KaTeX |

### Chart style for matplotlib

Run this once at the top of every notebook so charts match the site:

```python
import matplotlib as mpl
from cycler import cycler

mpl.rcParams.update({
    "axes.prop_cycle": cycler(color=["#4F46E5", "#0D9488", "#D97706",
                                     "#E11D48", "#0284C7", "#475569"]),
    "font.family": "sans-serif",
    "font.sans-serif": ["Inter", "DejaVu Sans", "Arial"],
    "font.size": 11,
    "axes.titlesize": 13,
    "axes.titleweight": 600,
    "axes.titlelocation": "left",
    "axes.labelcolor": "#334155",
    "axes.edgecolor": "#CBD5E1",
    "axes.spines.top": False,
    "axes.spines.right": False,
    "axes.grid": True,
    "grid.color": "#E2E8F0",
    "grid.linewidth": 0.8,
    "xtick.color": "#5F6B7D",
    "ytick.color": "#5F6B7D",
    "legend.frameon": False,
    "figure.facecolor": "white",
    "figure.dpi": 100,
    "savefig.dpi": 100,
})
```

`figure.dpi: 100` keeps PNG output small. The current notebooks embed about 2.6 MB of
charts, the main reason article pages load slowly on mobile.

## Quarto Implementation Map

Where each part of this system lives when the site is restyled. This section describes the
target; it does not reflect the current files.

| Concern | File | Setting |
|---|---|---|
| Prose and margin widths | `_quarto.yml` | `format.html.grid: {body-width: 680px, margin-width: 240px, sidebar-width: 240px}` |
| Navbar | `_quarto.yml` | `website.navbar.background: light` (fixes the always-dark navbar) |
| TOC | `_quarto.yml` | `toc: true`, `toc-location: right`, `toc-depth: 3`, `toc-title: "On this page"` |
| Lightbox | `_quarto.yml` | `lightbox: true` |
| Sidenotes | `_quarto.yml` | `reference-location: margin`, `citation-location: margin` |
| Cite block | article front matter | `citation: true` (Quarto builds the BibTeX appendix) |
| Code fold label | `_quarto.yml` | `code-summary: "Show code"` |
| Math | `_quarto.yml` | `html-math-method: katex` (already set) |
| Fonts | `includes/seo_header.html` | One Google Fonts link: Inter 400/500/600, Source Serif 4 400/600 + italic, JetBrains Mono 400/500 |
| Bootstrap variables | a theme `.scss` layer next to `theme-fonts.scss` | `$primary`, `$body-bg`, `$body-color`, `$border-color`, `$font-family-sans-serif`, `$font-family-monospace`, `$border-radius` set from the tokens |
| Design tokens | top of `styles.css` | CSS custom properties named after the YAML tokens (`--color-canvas`, `--radius-md`, …), with dark values under `body.quarto-dark` |
| Listing | `index.qmd` | `listing.type: default` restyled as post rows; optional `include` filter for one featured post |
| Tracks | `_quarto.yml` sidebar | One sidebar per track, title "Time Series Track" (no emoji) |

## Research Basis

Researched on 2026-10-16 from live HTML and CSS. What each source contributed:

| Site | What was borrowed |
|---|---|
| [Lilian Weng (Lil'Log)](https://lilianweng.github.io/) | Long-form article structure, auto-numbered figures, citation block, reading time in the meta row |
| [Distill](https://distill.pub/2021/gnn-intro/) | ~700px text column, margin notes, byline grid, research-grade appendix |
| [Hamel Husain](https://hamel.dev/) (Quarto) | Right-margin sticky TOC, dated table-style listing, left rule on cell output |
| [Eugene Yan](https://eugeneyan.com/) | Meta row with tags and reading time, curated "start here" sections, cite-this block |
| [Simon Willison](https://simonwillison.net/) | Serif headings over sans, dense dated archive |
| [Chip Huyen](https://huyenchip.com/), [Karpathy](https://karpathy.github.io/) | Plain dated post lists with one-line summaries; book-style figure captions |
| [Jay Alammar](https://jalammar.github.io/) | One fixed palette across every diagram |
| [Ahead of AI](https://magazine.sebastianraschka.com/), [Latent Space](https://www.latent.space/) | Single brand accent, numbered sections, end-of-post follow prompt |
| [Anthropic Engineering](https://www.anthropic.com/engineering) | Serif reading body at 17–18px in a ~640px column with wider media breakouts; inline follow card |
| [OpenAI News](https://openai.com/news/) | Alpha-based neutrals, TOC-aware article grid, category tabs, `text-wrap: balance` |
| [Google DeepMind](https://deepmind.google/blog/) | Material-style surface tokens; separate light/dark artwork |
| [Hugging Face](https://huggingface.co/blog) | Mono tag pills, 1.91:1 thumbnails, 18px/1.78 prose, KaTeX |
| [LangChain](https://www.langchain.com/blog), [Pinecone](https://www.pinecone.io/learn/) | Sticky left/right TOC rails, zoomable figures, copy buttons |
| [Modal](https://modal.com/blog), [Vercel](https://vercel.com/blog) | Hairline-only depth, ~640–700px articles, compact category tabs |
| [Replicate](https://replicate.com/blog), [Towards Data Science](https://towardsdatascience.com/) | Radix-style gray scale, bordered code blocks with copy, 750px article width |
| [Linear](https://linear.app/now), [Vercel Geist](https://vercel.com/geist), [Stripe](https://stripe.com/blog), [Supabase](https://supabase.com/blog) | Token scales: 4px spacing, 6–12px radii, 600 max heading weight, translucent sticky nav, 150–250ms ease-out motion |
| [design.md spec](https://github.com/google-labs-code/design.md), [awesome-design-md](https://github.com/VoltAgent/awesome-design-md) | File format: YAML tokens, then the eight ordered sections |
