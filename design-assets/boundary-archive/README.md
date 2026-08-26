# Boundary asset archive

Reference archive of the footer and page-boundary artwork developed for this site.

## Folders

- `current-sprites/` contains the reusable pieces used by the current footer.
- `historical-parts/` contains earlier ground, flora, flower, and zen-line assets recovered from Git history.
- `historical-scenes/` contains every committed full cat/bench footer and its mobile counterpart.
- `generated-compositions/` contains the landscape-format source generations from the design session, converted losslessly to the WebP container at high quality.

Everything visual in this archive is a `.webp` file.

## Notes

- Current sprites have their production filenames so they can be copied directly into `public/`.
- Historical scene filenames are numbered chronologically by the Git revision in which they appeared.
- Generated compositions retain their generation IDs so the original source can be traced.
- This directory is outside `public/`, so Astro does not ship it with the website.

The live footer still reads its assets from `public/`; changing files here alone will not change the site.
