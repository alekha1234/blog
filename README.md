# Gujuri Alekha | Blog 🧠💻
### Hands-on Python notebooks on time series, statistics and machine learning

[![Deploy Quarto Blog to GitHub Pages](https://github.com/alekha1234/blog/actions/workflows/deploy.yml/badge.svg)](https://github.com/alekha1234/blog/actions/workflows/deploy.yml)
[![Live Blog](https://img.shields.io/badge/Live%20Blog-GitHub%20Pages-blue?style=flat&logo=github)](https://alekha1234.github.io/blog/)
[![Built with Quarto](https://img.shields.io/badge/Built%20with-Quarto-4A90E2?style=flat&logo=quarto)](https://quarto.org/)

> **Read the blog:** [https://alekha1234.github.io/blog/](https://alekha1234.github.io/blog/)

Jupyter notebooks published as articles, with code folding, maths, figures, a table of contents
and light/dark mode. The site is built with [Quarto](https://quarto.org/) and deployed to GitHub
Pages on every push to `main`.

## 📚 Learning tracks

Each topic folder is a track: numbered notebooks meant to be read in order.

**[Time Series Track](https://alekha1234.github.io/blog/time-series/)**

| Part | Article | Topics |
| :--- | :--- | :--- |
| 1 | **[Time Series Analysis in Python: Decomposition, STL & Stationarity Tests](https://alekha1234.github.io/blog/time-series/01-time-series-analysis-and-forecasting.html)** | Additive vs multiplicative decomposition, STL, stationarity tests (ADF, KPSS), transformations |
| 2 | **[ARIMA & SARIMA in Python: AR, MA, ARMA Models on Apple Stock Data](https://alekha1234.github.io/blog/time-series/02-arima-sarima-models.html)** | AR, MA, ARMA, ARIMA and SARIMA with statsmodels, RMSE evaluation |

## ✍️ Publishing a new notebook

New posts appear automatically on the [portfolio](https://alekha1234.github.io/gujurialekha.github.io/#writing),
which shows the latest 4 from this blog's feed. Before every push, check:

1. The notebook is in a track folder, e.g. `time-series/03-….ipynb`.
2. Its first Raw cell has `title`, `description` (under 155 characters; it's the portfolio card text),
   a fixed `date` newer than the other posts, and `categories` (the first one is the card tag).
3. It isn't marked `draft: true`.
4. This README's track table has a row for it.

The full checklist and front-matter template are in
[PUBLISHING.md](PUBLISHING.md#checklist-before-you-push-a-new-notebook).

## 📖 Docs

- [PUBLISHING.md](PUBLISHING.md): adding notebooks and topic tracks, front matter rules, the pre-push checklist, SEO setup
- [DESIGN.md](DESIGN.md): the design system (colours, typography, components)

## 📬 Contact

- **Portfolio:** [alekha1234.github.io/gujurialekha.github.io](https://alekha1234.github.io/gujurialekha.github.io/)
- **LinkedIn:** [gujuri-alekha](https://www.linkedin.com/in/gujuri-alekha/)
- **GitHub:** [@alekha1234](https://github.com/alekha1234)
