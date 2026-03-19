#!/usr/bin/env bash
# build.sh — assemble pages from src partials into public/
set -euo pipefail

SRC="src"
OUT="public"
BUILD_DATE=$(date -u "+%Y-%m-%d")

# Clean and recreate output directory
rm -rf "$OUT"
mkdir -p "$OUT"

# Copy static assets
cp "$SRC/style.css" "$OUT/style.css"
cp "$SRC/script.js" "$OUT/script.js"

# Build each page
for page_file in "$SRC/pages/"*.html; do
  filename=$(basename "$page_file")

  # Extract title from the first line: <!-- title: some title -->
  title=$(head -1 "$page_file" | sed 's/.*<!-- title: \(.*\) -->.*/\1/')

  # Assemble: head (title substituted) + page content (skip title comment) + foot (date substituted)
  {
    sed "s/PAGETITLE/$title/" "$SRC/_head.html"
    tail -n +2 "$page_file"
    sed "s/BUILDDATE/$BUILD_DATE/" "$SRC/_foot.html"
  } > "$OUT/$filename"

  echo "  built: $filename (\"$title\")"
done

echo "done. output in ./$OUT/"
