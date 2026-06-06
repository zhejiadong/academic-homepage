
# Academic homepage scaffold

This project is a lightweight static website with a minimalist academic homepage structure and an AcademicPages-style footer.

Files you will edit most often:

- `assets/site-data.js` — all profile text, news, publications, talks, and courses live here
- `assets/images/avatar-placeholder.svg` — replace this with your real photo, then update `photo` in `assets/site-data.js`
- `assets/style.css` — global visual style if you want to tweak spacing, colors, or fonts

Main pages:

- `index.html` — home page
- `research.html` — research page
- `presentations.html` — presentations page
- `teaching.html` — teaching page

## How to open in VS Code

Option 1: In Terminal, run:

```bash
code '/Users/zhejia/Brown Dropbox/Zhejia Dong/page/academic-homepage'
```

If `code` is not available, open VS Code first, then use:

- File → Open Folder...
- choose `/Users/zhejia/Brown Dropbox/Zhejia Dong/page/academic-homepage`

## How to preview locally

Option 1: Open `index.html` directly in a browser.

Option 2: Run a local server from this folder:

```bash
python3 -m http.server 8000
```

Then open:

`http://localhost:8000`

## What to edit in VS Code

The main file you will edit is:

- `assets/site-data.js`

That file controls:

- your name
- title / affiliation
- email and links
- homepage intro text
- recent news
- research entries
- presentations
- teaching

Only edit `assets/style.css` if you want to change layout, spacing, fonts, or colors.

## What to replace first

1. In `assets/site-data.js`, update:
   - `name`
   - `shortTitle`
   - `links`
   - homepage intro paragraphs
   - news entries
   - publications
   - talks
   - courses

2. Replace the placeholder image in `assets/images/`

3. If you want a CV page later, duplicate one of the existing pages and add it to the nav.

## Suggested content structure

Home:
- 2–4 paragraph bio
- current position
- research themes
- short recent news timeline

Research:
- research overview
- selected publications
- working papers / software / projects

Presentations:
- invited talks
- conference talks
- slides / video links

Teaching:
- teaching philosophy
- course list
- syllabus / notes / office hours links
