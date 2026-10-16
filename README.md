# Gujuri Alekha | Blog 🧠💻
### Interactive Notebooks on Statistics, Time Series, Gen AI, RAG & Agents

[![Deploy Quarto Blog to GitHub Pages](https://github.com/alekha1234/blog/actions/workflows/deploy.yml/badge.svg)](https://github.com/alekha1234/blog/actions/workflows/deploy.yml)
[![Live Blog](https://img.shields.io/badge/Live%20Blog-GitHub%20Pages-blue?style=flat&logo=github)](https://alekha1234.github.io/blog/)
[![Built with Quarto](https://img.shields.io/badge/Built%20with-Quarto-4A90E2?style=flat&logo=quarto)](https://quarto.org/)

> **Live Website & Notebook Blog**: [https://alekha1234.github.io/blog/](https://alekha1234.github.io/blog/)

Welcome to **Gujuri Alekha's Data Science & AI Blog** — an open technical journal and notebook hub.

This repository automatically publishes executable Jupyter Notebooks (`.ipynb`) and technical articles into an interactive, fast, and responsive website with syntax highlighting, code folding, math rendering ($\LaTeX$), floating tables of contents, and dark/light mode.

---

## 📚 Published Notebooks & Articles

| Article / Notebook | Topics | Status |
| :--- | :--- | :--- |
| **[Time Series Analysis in Python: Decomposition, STL & Stationarity Tests](https://alekha1234.github.io/blog/time-series/time-series-analysis-and-forecasting.html)** | Additive vs Multiplicative decomposition, STL, stationarity tests (ADF, KPSS), transformations | 🟢 Published |
| **[ARIMA & SARIMA in Python: AR, MA, ARMA Models on Apple Stock Data](https://alekha1234.github.io/blog/time-series/arima-sarima-models.html)** | Classical time series modeling, Apple stock price prediction, statsmodels, RMSE evaluation | 🟢 Published |

---

## 🗃️ Repository Structure

```text
blog/
├── .github/
│   └── workflows/
│       └── deploy.yml                          # Automated GitHub Actions deployment
├── _quarto.yml                                 # Site config: navigation, sidebars, SEO settings
├── index.qmd                                   # Homepage listing + homepage JSON-LD (WebSite, Blog, Person)
├── about.qmd                                   # Author profile & bio
├── 404.qmd                                     # "Page not found" page
├── seo-jsonld.lua                              # Adds BlogPosting JSON-LD to every article
├── styles.css                                  # Modern styles (Inter, Space Grotesk, JetBrains Mono)
├── includes/seo_header.html                    # Font preconnects + stylesheet
├── images/                                     # Favicon and default social-share image
├── time-series/                                # 📈 Topic Track 1
│   ├── time-series-analysis-and-forecasting.ipynb  # Step 1 (Decomposition, Stationarity)
│   └── arima-sarima-models.ipynb                   # Step 2 (AR, MA, ARIMA, SARIMA)
├── Programming in Cpp/                         # C++ practice code (not published to the site)
└── Programming in Java/                        # Java practice code (not published to the site)
```

---

## ✍️ How to Add Ordered Topic Notebooks (e.g. `machine-learning/`)

Folder and file names become the page URL, so use **lowercase-kebab-case** with keywords (no spaces, no underscores, no number prefixes). Reading order is set by `order:` and the sidebar, not by the filename.

### 1. Create a Topic Folder in the Root Directory
```text
machine-learning/
├── supervised-learning-foundations.ipynb
├── linear-and-logistic-regression.ipynb
└── decision-trees-and-random-forest.ipynb
```

### 2. Add YAML Frontmatter with `order:` to the First Cell
In the notebook's first cell (set to **Raw**):
```yaml
---
title: "Supervised Learning in Python: Regression, Classification & Gradient Descent"
description: "Core concepts of regression, classification, cost functions, and gradient descent."
author: "Gujuri Alekha"
date: "2026-10-16"
order: 0
categories: [Machine Learning, Regression, Classification, Python]
image-alt: "One sentence describing the first chart in the notebook"
toc: true
number-sections: true
code-fold: show
---
```

- **title**: put the keywords people search for first; aim for under 60 characters.
- **description**: shown in Google results; keep it at 155 characters or fewer.
- Use a fixed `date:` (the publish date). Avoid `date: last-modified` — CI checks out fresh files, so every post would show the deploy time.
- Use `##` for top-level sections inside the notebook; the page title is already the H1.
- If you ever rename a published notebook, add the old URL under `aliases:` so existing links redirect.

Notebooks are **not re-executed** on deploy; the saved outputs are published as-is. Run the notebook top-to-bottom (*Restart & Run All*) before committing.

### 3. Link the Topic in `_quarto.yml` (For Sidebar Track & Sequential Reading)
Open `_quarto.yml` and add your topic to the navbar and sidebar:
```yaml
  navbar:
    left:
      - text: "Home"
        href: index.qmd
      - text: "📈 Time Series Track"
        href: "time-series/time-series-analysis-and-forecasting.ipynb"
      - text: "🤖 Machine Learning"
        href: "machine-learning/supervised-learning-foundations.ipynb"
  sidebar:
    - id: "machine-learning"
      title: "🤖 Machine Learning Track"
      style: "docked"
      contents:
        - "machine-learning/supervised-learning-foundations.ipynb"
        - "machine-learning/linear-and-logistic-regression.ipynb"
```
Readers will get:
- A docked **Sidebar Track** showing every notebook in order.
- **"Next Page →"** and **"← Previous Page"** buttons at the bottom of each article so anyone can read through the entire topic in order!

### 4. Commit and Push!
```bash
git add machine-learning/ _quarto.yml
git commit -m "feat: add Machine Learning track"
git push origin main
```
The GitHub Actions workflow in [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) will automatically build and publish your new post to GitHub Pages in ~1 minute!

After it's live, open Google Search Console → **URL Inspection**, paste the new article URL and click **Request indexing**.

---

## 🔎 SEO & Search Console

- `sitemap.xml`, canonical links, Open Graph / Twitter cards and the favicon are generated by Quarto from `_quarto.yml`.
- Structured data: the homepage has `WebSite`, `Blog` and `Person` items (in `index.qmd`); every article gets a `BlogPosting` item from `seo-jsonld.lua`. The Person `@id` matches the portfolio's, so Google treats both sites as the same author.
- Google Analytics (`G-X9RX470F8T`, shared with the portfolio) is set in `_quarto.yml`.
- Search Console property: URL prefix `https://alekha1234.github.io/blog/`, sitemap `https://alekha1234.github.io/blog/sitemap.xml`.

---

## 💻 Local Development & Preview

### Prerequisites
- [Quarto CLI](https://quarto.org/docs/get-started/) (`winget install Posit.Quarto`)
- Python 3.10+ with `jupyter`:
  ```bash
  pip install jupyter
  ```

### Live Preview Server
Run this command from the repository root:
```bash
quarto preview
```
This opens a local development server at `http://localhost:4200/` with instant hot-reloading when you edit notebooks or `.qmd` files.

### Build Production Static Site
```bash
quarto render
```
Builds the production HTML website into the `_site/` directory.

---

## ⚙️ Enabling GitHub Pages (One-Time Setup)

Once you push this branch to GitHub:
1. Open your repository on GitHub: `https://github.com/alekha1234/blog`.
2. Go to **Settings** → **Pages** (under the "Code and automation" section).
3. Under **Build and deployment** > **Source**, select:
   - **GitHub Actions**
4. Done! Every future push to `main` will automatically build and publish your blog.

---

## 📬 Contact & Connect

- **Author**: Gujuri Alekha
- **GitHub**: [@alekha1234](https://github.com/alekha1234)
- **Blog**: [https://alekha1234.github.io/blog/](https://alekha1234.github.io/blog/)
- **Portfolio**: [https://alekha1234.github.io/gujurialekha.github.io/](https://alekha1234.github.io/gujurialekha.github.io/)
- **LinkedIn**: [gujuri-alekha](https://www.linkedin.com/in/gujuri-alekha/)

---

*“Write code. Learn deeply. Share knowledge.”*
