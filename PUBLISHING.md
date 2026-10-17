# Publishing Guide

How to add notebooks to the blog and keep it healthy in search. For how the site should look,
see [DESIGN.md](DESIGN.md).

## How the site is built

- Every push to `main` runs [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml),
  which renders the site with Quarto and deploys it to GitHub Pages in about a minute.
- Notebooks are **not re-executed** on deploy. The outputs saved in the `.ipynb` are published
  as-is, so run the notebook top to bottom (*Restart & Run All*) before committing.
- Only the files listed under `project.render` in `_quarto.yml` are published: the homepage,
  All articles, About, 404, each track's `index.qmd` and every `*/*.ipynb`. The
  `Programming in Cpp/` and `Programming in Java/` folders and the Markdown docs stay in the
  repo only.

## Repository layout

```text
blog/
├── _quarto.yml               # Site config: navbar, track sidebars, SEO, theme, filters
├── index.qmd                 # Homepage: hero, learning roadmap (track cards), latest, author
├── articles.qmd              # All articles, with search and category filter
├── about.qmd                 # About page
├── 404.qmd                   # "Page not found" page
├── time-series/              # A track (see below)
│   ├── _metadata.yml         #   track name + shared article settings
│   ├── index.qmd             #   the track's roadmap page
│   ├── 01-time-series-analysis-and-forecasting.ipynb
│   └── 02-arima-sarima-models.ipynb
├── _templates/               # Listing templates: track-card, roadmap, post-row
├── _partials/title-block.html# Article header with the "Track · Part N of M" eyebrow
├── article-chrome.lua        # Computes "Part N of M" and adds the follow card to articles
├── seo-jsonld.lua            # Adds BlogPosting structured data to every article
├── lazy-images.lua           # Lazy-loads every image except the first on a page
├── styles.css                # Site styles (DESIGN.md tokens as CSS variables)
├── theme-light.scss          # Bootstrap variables, light theme
├── theme-dark.scss           # Bootstrap variables, dark theme
├── includes/seo_header.html  # Google Fonts links
├── images/                   # Favicon and default social-share image
├── DESIGN.md                 # Design system
└── PUBLISHING.md             # This guide
```

## How tracks work

Each topic folder is a **track**: a series of notebooks meant to be read in order. The order
comes from two things that must agree:

- the filename prefix: `01-…`, `02-…`, `03-…` (shows the order in the repo and the URL), and
- `order:` in the notebook's front matter: `1`, `2`, `3` (what Quarto actually sorts by).

From those, the site builds everything else automatically: the track's roadmap page, the
sidebar, the "Previous / Next" links, the "Time Series Track · Part 2 of 3" label above each
title, and the homepage track card.

## Adding a notebook to an existing track

1. Save it as the next number in the folder, e.g. `time-series/03-exponential-smoothing.ipynb`.
2. Make the first cell a **Raw** cell with this front matter (`order` = the file number):

   ```yaml
   ---
   title: "Exponential Smoothing in Python: Holt-Winters Forecasting"
   description: "One or two sentences on what the reader will learn (155 characters max)."
   author: "Gujuri Alekha"
   date: "2026-11-01"
   order: 3
   categories: [Time Series, Forecasting, Python]
   image-alt: "One sentence describing the first chart in the notebook"
   toc: true
   number-sections: true
   code-fold: show
   ---
   ```

3. Preview with `quarto preview`, then commit and push. Nothing else needs editing.

### How a new post reaches the portfolio

The portfolio's Writing section ([alekha1234.github.io/gujurialekha.github.io](https://alekha1234.github.io/gujurialekha.github.io/#writing))
shows the **latest 4 posts** from this blog's RSS feed (`index.xml`). It reads the feed in the visitor's
browser, so you don't need to commit or rebuild anything in the portfolio repo.

- **Visitors** see the new post on the portfolio about **10 minutes after this blog's deploy finishes**
  (GitHub Pages can cache the old feed for up to 10 minutes).
- **Search engines and AI crawlers** see it after the portfolio's daily rebuild at 02:30 UTC. To show
  it sooner, open the portfolio repo's **Actions** tab → *Deploy Next.js site to GitHub Pages* →
  **Run workflow**.

The feed is set up for this in `index.qmd` (the `latest` listing): `contents: "*/*.ipynb"`,
`sort: "date desc"`, `max-items: 5` and `feed: type: partial`. Keep those as they are. `partial`
puts each post's `description` in the feed, and the portfolio uses it as the card text.

### Checklist before you push a new notebook

- [ ] It's in a track folder (`time-series/03-….ipynb`). Notebooks at the repo root and `.qmd`
      files are not in the feed.
- [ ] The first cell is the Raw front-matter cell above.
- [ ] `title`: under 60 characters. It becomes the portfolio card title.
- [ ] `description`: 1–2 sentences, under 155 characters. It becomes the card text on the
      portfolio (and the Google snippet).
- [ ] `date`: a fixed date that is **newer than your other posts**. The portfolio shows the 4 newest
      by date, so an older date can keep the post off it.
- [ ] `categories`: the **first item is the card tag** on the portfolio (e.g. `Time Series`).
- [ ] No `draft: true`. Drafts are left out of the feed.
- [ ] `order` matches the file number, and the README track table has a row for the new post.
- [ ] `quarto preview` looks right, outputs are cleared of warnings and progress bars.

Writing rules:

- **title**: put the keywords people search for first; aim for under 60 characters.
- **date**: use a fixed publish date. Avoid `date: last-modified`: CI checks out fresh files,
  so every post would show the deploy time.
- Use `##` for top-level sections inside the notebook; the page title is already the H1.
- Give each chart cell alt text with `#| fig-alt: "..."` as its first line, and use the
  matplotlib style snippet from [DESIGN.md](DESIGN.md#notebook-content-patterns).
- Don't publish Colab interactive tables, warnings or progress bars; clear them before committing.
- Track pages already set `citation`, `code-tools` and margin footnotes through the folder's
  `_metadata.yml`, so don't repeat them in the notebook.
- If you ever rename a published notebook, add the old URL under `aliases:` so existing links
  redirect. Inserting a notebook in the middle of a track means renumbering the later ones, so
  add their old URLs to `aliases:` too.

## Adding a new track (e.g. `machine-learning/`)

1. **Create the folder** with its first notebook, `machine-learning/01-….ipynb` (`order: 1`).
2. **Copy `time-series/_metadata.yml`** into it and change `track: "Machine Learning"`.
3. **Copy `time-series/index.qmd`** into it and rewrite the title, description and the
   "You'll learn / Prerequisites / Tools" box. Keep `order: 0` and the `listing` block as is.
4. **`_quarto.yml`**: add the track to the navbar "Tracks" menu and give it a sidebar:

   ```yaml
   navbar:
     left:
       - text: "Tracks"
         menu:
           - text: "Time Series"
             href: time-series/index.qmd
           - text: "Machine Learning"
             href: machine-learning/index.qmd
   sidebar:
     - id: machine-learning
       title: "Machine Learning Track"
       style: docked
       contents:
         - auto: machine-learning
   ```

5. **`index.qmd`** (homepage): copy the `track-time-series` listing block, change `id`,
   `contents` and `template-params` (`number: "02"`, name, description, `href`), and add a
   matching `::: {#track-machine-learning}` / `:::` pair inside `::: {.track-grid}`.
6. Preview, commit and push.

## Ask Google to index new pages

Once the deploy finishes, open Google Search Console → **URL Inspection**, paste the new
article URL and click **Request indexing**.

## SEO setup

- `sitemap.xml`, canonical links, Open Graph / Twitter cards and the favicon are generated by
  Quarto from `_quarto.yml`.
- Structured data: the homepage has `WebSite`, `Blog` and `Person` items (in `index.qmd`);
  every article gets a `BlogPosting` item from `seo-jsonld.lua`. The Person `@id` matches the
  portfolio's, so Google treats both sites as the same author. Articles also carry Google
  Scholar citation tags (`google-scholar: true` in each track's `_metadata.yml`).
- Google Analytics (`G-X9RX470F8T`, shared with the portfolio) is set in `_quarto.yml`.
- Search Console property: URL prefix `https://alekha1234.github.io/blog/`; sitemap
  `https://alekha1234.github.io/blog/sitemap.xml`.
