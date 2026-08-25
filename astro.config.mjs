import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://zhango999.github.io',
  output: 'static',
  integrations: [sitemap()],
  build: {
    format: 'directory',
  },
});
