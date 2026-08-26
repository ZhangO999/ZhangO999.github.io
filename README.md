# Oliver Zhang personal website

The source for [zhango999.github.io](https://zhango999.github.io), built as a
small static site with Astro, TypeScript, and plain CSS.

Edit: The reason why I chose Astro was mainly because I wanted a markdown centric way to 
easily add new pages and edits to my website.

## Local development

```bash
npm install
npm run dev
```

The production build is generated in `dist/`:

```bash
npm run build
npm run preview
```

## Updating content

Projects are individual Markdown files in `src/content/projects/`. Add a file,
fill in its frontmatter, and it will automatically appear on the work page.
Set `featured: true` to include it on the homepage.

Page copy lives in `src/pages/`, shared components in `src/components/`, and the
visual system in `src/styles/global.css`.

More notes: 
https://app.notion.com/p/ozzzhang/Personal-Website-Notes-3c48aa426b4a80989b42dbc84703ddad

## Deployment

Every push to `main` runs the production build and deploys `dist/` through
GitHub Pages. In the repository settings, Pages should use **GitHub Actions** as
its source.
