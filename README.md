# Data Science & AI Blog 🧠💻
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
| **[Time Series Modeling: AR, MA, ARMA, ARIMA & SARIMA](https://alekha1234.github.io/code-chronicle-hub/posts/timeseries-all-models/)** | Classical time series modeling, Apple stock price prediction, statsmodels, RMSE evaluation | 🟢 Published |
| **[Comprehensive Time Series Analysis and Forecasting](https://alekha1234.github.io/code-chronicle-hub/posts/time-series-forecasting/)** | Additive vs Multiplicative decomposition, STL, stationarity tests (ADF, KPSS), transformations | 🟢 Published |
| **[Welcome to Code Chronicle Hub](https://alekha1234.github.io/code-chronicle-hub/posts/welcome/)** | Project overview, technical background, and upcoming studies | 🟢 Published |

---

## 🗃️ Repository Structure

```text
blog/
├── .github/
│   └── workflows/
│       └── deploy.yml                                # Automated GitHub Actions deployment
├── _quarto.yml                                       # Navigation, sidebars & sequential paths
├── index.qmd                                         # Homepage listing with search & categories
├── about.qmd                                         # Author profile & bio
├── styles.css                                        # Modern styles (Inter, Fira Code, tables)
├── Time Series Forecasting/                          # 📈 Topic Track 1
│   ├── 00_time_series_analysis_and_forecasting.ipynb # Step 00 (Decomposition, Stationarity)
│   └── 01_timeseries_all_models.ipynb                # Step 01 (AR, MA, ARIMA, SARIMA)
├── Statistics/                                       # 📊 Future Topic Track 2
├── Generative AI/                                    # 🤖 Future Topic Track 3
├── Programming in Cpp/                               # C++ programming notes
└── Programming in Java/                              # Java programming notes
```

---

## ✍️ How to Add Ordered Topic Notebooks (e.g. `Machine Learning/`)

You can create new topic directories directly in the root (like `Machine Learning/`, `Deep Learning/`, `Natural Language Processing/`) and maintain a numbered order (`00_...`, `01_...`):

### 1. Create a Topic Folder in the Root Directory
```text
Machine Learning/
├── 00_supervised_learning_foundations.ipynb
├── 01_linear_and_logistic_regression.ipynb
└── 02_decision_trees_and_random_forest.ipynb
```

### 2. Add YAML Frontmatter with `order:` to the First Cell
In the notebook's first cell (set to **Raw** or **Markdown**):
```yaml
---
title: "00: Supervised Learning Foundations"
description: "Core concepts of regression, classification, cost functions, and gradient descent."
author: "Gujuri Alekha"
date: "2026-10-16"
order: 0
categories: [Machine Learning, Regression, Classification, Python]
toc: true
code-fold: show
---
```

### 3. Link the Topic in `_quarto.yml` (For Sidebar Track & Sequential Reading)
Open `_quarto.yml` and add your topic to the navbar and sidebar:
```yaml
  navbar:
    left:
      - text: "Home"
        href: index.qmd
      - text: "📈 Time Series"
        href: "Time Series Analysis/00_time_series_analysis_and_forecasting.ipynb"
      - text: "🤖 Machine Learning"
        href: "Machine Learning/00_supervised_learning_foundations.ipynb"
```
Readers will get:
- A docked **Sidebar Track** showing every notebook in order (00, 01, 02...).
- **"Next Page →"** and **"← Previous Page"** buttons at the bottom of each article so anyone can read through the entire topic in order!

### 2. Add YAML Frontmatter to the First Cell of the Notebook
In Jupyter Notebook, create a **Raw** (or Markdown) cell at the very top (cell #1) with:

```yaml
---
title: "My New Machine Learning Model"
description: "Brief summary of what this article is about."
author: "Gujuri Alekha"
date: "2026-10-15"
categories: [Machine Learning, Python, PySpark]
toc: true
number-sections: true
code-fold: show
---
```

### 3. Commit and Push!
```bash
git add posts/my-new-model/
git commit -m "feat: add new blog post on My New Machine Learning Model"
git push origin main
```
The GitHub Actions workflow in [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) will automatically build and publish your new post to GitHub Pages in ~1 minute!

---

## 💻 Local Development & Preview

### Prerequisites
- [Quarto CLI](https://quarto.org/docs/get-started/) (`winget install Quarto.Quarto`)
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
1. Open your repository on GitHub: `https://github.com/alekha1234/code-chronicle-hub`.
2. Go to **Settings** → **Pages** (under the "Code and automation" section).
3. Under **Build and deployment** > **Source**, select:
   - **GitHub Actions**
4. Done! Every future push to `main` will automatically build and publish your blog.

---

## 📬 Contact & Connect

- **Author**: Gujuri Alekha
- **GitHub**: [@alekha1234](https://github.com/alekha1234)
- **Portfolio / Blog**: [https://alekha1234.github.io/code-chronicle-hub/](https://alekha1234.github.io/code-chronicle-hub/)

---

*“Write code. Learn deeply. Share knowledge.”*
