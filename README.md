# ozzh.github.io

Personal site at [ozzh.github.io](https://ozzh.github.io).

Built with pure HTML, CSS, and JavaScript. A small bash script assembles
pages from shared partials and outputs them to `public/`. GitHub Actions
deploys `public/` to GitHub Pages on every push to `main`.

## Structure

```
src/
  _head.html        # shared page header (nav, <head>)
  _foot.html        # shared page footer
  style.css         # stylesheet
  script.js         # active nav highlighting
  pages/
    index.html      # home page content
    about.html      # about page content
build.sh            # builds src/ → public/
serve.sh            # build + local dev server
.github/
  workflows/
    deploy.yml      # CI: build & deploy to GitHub Pages
```

## Usage

**Build:**
```bash
bash build.sh
```

**Preview locally** (requires Python 3):
```bash
bash serve.sh
# open http://localhost:8000
```

## Adding a new page

1. Create `src/pages/yourpage.html` — first line must be `<!-- title: Your Title -->`
2. Add a nav link in `src/_head.html`
3. Run `bash build.sh`

## Deployment

Push to `main`. The GitHub Actions workflow runs `build.sh`, then deploys
`public/` via the [GitHub Pages API](https://docs.github.com/en/pages).

Make sure GitHub Pages is set to deploy from **GitHub Actions** in your
repo settings: *Settings → Pages → Source → GitHub Actions*.
