# Editing guide for your website

This site is designed so you can mostly maintain it yourself without touching layout files.

## Start the preview

From this folder:

```bash
./start_site.sh
```

Then open:

`http://127.0.0.1:54201/index.html`

## Files you will edit most often

1. `content/home.md`
   - your main homepage bio
   - advisor / committee paragraph

2. `assets/home-data.js`
   - Education
   - Recent News
   - Selected Awards

3. `content/research.md`
   - research overview paragraph

4. `assets/research-data.js`
   - selected publications
   - projects / working papers

5. `content/presentations.md`
   - short page intro if you want one

6. `assets/presentations-data.js`
   - talks / posters / invited talks

7. `content/teaching.md` and `assets/teaching-data.js`
   - teaching overview and course list

## Easiest editing rule

For almost all list sections, use one quoted line per item.

Examples:

### Education

```js
education: [
  'Ph.D. in Biostatistics, Brown University (2023–present)',
  'M.S. in Biostatistics, Brown University (2021–2023)'
],
```

### News

```js
news: [
  'Aug 2026. [JSM 2026] Presentation: “Talk title.”',
  'Jun 2026. [Paper] New paper available: “Paper title.”',
  'Jun 2026. Code is available on [GitHub](https://github.com/yourname/your-repo).',
  'Jun 2026. Preprint: https://arxiv.org/abs/1234.56789'
],
```

You can add hyperlinks in either of these easy formats:
- `[GitHub](https://github.com/yourname/your-repo)`
- `https://arxiv.org/abs/1234.56789`

Do not use angle-bracket style like `<https://...>` inside these JS list strings.

### Awards

```js
awards: [
  '2026. [NESS Student Poster Award](https://example.com/award-page) for poster presentation “Title.”'
],
```

Awards on the home page can also contain hyperlinks using:
- `[Award name](https://...)`
- bare URLs like `https://...`

### Publications

For the research page, the easiest way is now one citation-style string per entry.
This is the recommended format.

```js
publications: [
  'Dong, Zhejia. "Paper title here." Working paper. [arXiv](https://arxiv.org/abs/1234.56789) [code](https://github.com/yourname/project)',
  'Liu, Y., Levis, A., Zhu, K., Yang, S., Gilbert, P. B., and Han, L. (2026+). "Targeted Data Fusion for Region-Specific Survival Effects in the AMP HIV Prevention Trials." Major revision submitted to Journal of the American Statistical Association. [arXiv](https://arxiv.org/abs/1234.56789)'
],
```

In Research citations, the page will automatically:
- bold `Dong, Zhejia`
- bold `Dong, Z.`
- render markdown links as compact labels like `[arXiv] [code]`
- treat `\\` inside a citation string as a manual line break, so you can move awards/notes to the next line
- support italics with either `*JRSS-A*` or `_JRSS-A_`

So you do not need to manually write `**Dong, Zhejia**`.

If you still want the older multi-field object layout, it is also supported, but the one-line citation style above is now the simplest option.

### Talks

```js
talks: [
  'Aug 2026. [JSM 2026] Boston, MA. “Talk title.”',
  'May 2026. [NESS 2026] Storrs, CT. “Talk title.”'
],
```

### Courses

```js
courses: [
  'PHP 2550: Practical Data Analysis — Brown University, Teaching Assistant, Fall 2023.'
],
```

## Important rule

Each line in a list needs a comma after it, except the last one.

Good:

```js
news: [
  'item 1',
  'item 2'
],
```

Bad:

```js
news: [
  'item 1'
  'item 2'
],
```

## Files you should usually avoid editing

Only touch these if you want design/layout changes:

- `index.html`
- `research.html`
- `presentations.html`
- `teaching.html`
- `assets/style.css`
- `assets/site.js`

## If the content suddenly disappears

Usually it means there is a small syntax error in one of the `.js` data files.

Check these first:
- missing comma
- missing quote
- extra quote
- extra bracket

The layout is usually fine; only the data file needs fixing.
