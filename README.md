# Zhejia Dong — Personal Website

This repository contains the source code for Zhejia Dong's personal academic website.

The site is a lightweight static homepage built with plain HTML, CSS, and JavaScript, designed for easy long-term editing without a framework or CMS.

## Website structure

Main pages:
- `index.html` — home
- `research.html` — research
- `presentations.html` — presentations
- `teaching.html` — teaching

Main editable content files:
- `assets/site-data.js` — sidebar profile information and shared site metadata
- `assets/home-data.js` — homepage structured content
- `assets/research-data.js` — publications and research entries
- `assets/presentations-data.js` — talks and presentation entries
- `assets/teaching-data.js` — teaching entries
- `content/home.md` — homepage narrative text
- `content/research.md` — research overview text
- `content/presentations.md` — presentations overview text
- `content/teaching.md` — teaching overview text

## Editing notes

The website is intentionally set up so most routine updates only require editing text/content files rather than layout code.

Examples:
- update bio or page introductions in `content/*.md`
- update publications in `assets/research-data.js`
- update talks, slides, or posters in `assets/presentations-data.js`
- update sidebar links or profile details in `assets/site-data.js`

Inline markdown is supported in content strings, including:
- italic text with `*text*`
- links with `[label](https://example.com)`

## Local preview

From this folder, run:

```bash
python3 -m http.server 8000
```

Then open:

```text
http://127.0.0.1:8000
```

## Deployment

This repository is suitable for GitHub Pages deployment directly from the `main` branch.

## Design note

The website is a custom static build inspired by AcademicPages.
