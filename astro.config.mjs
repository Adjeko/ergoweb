import { defineConfig } from 'astro/config';
import storyblok from '@storyblok/astro';
import { loadEnv } from 'vite';
import tailwind from "@astrojs/tailwind";
import svelte from "@astrojs/svelte";
import node from "@astrojs/node";
const env = loadEnv("", process.cwd(), 'STORYBLOK');


// https://astro.build/config

// https://astro.build/config
export default defineConfig({
  integrations: [storyblok({
    accessToken: env.STORYBLOK_TOKEN,
    components: {
      page: "storyblok/Page",
      feature: "storyblok/Feature",
      grid: "storyblok/Grid",
      teaser: "storyblok/Teaser",
      hero: "storyblok/Hero",
      stripe: "storyblok/Stripe"
    },
    apiOptions: {
      // Choose your Storyblok space region
      region: 'eu' // optional,  or 'eu' (default)
    },

    bridge: true,
    apiOptions: {},
    // storyblok-js-client options
    useCustomApi: false,
  }), tailwind(), svelte()],
  // output: "server",
  // adapter: node({
  //   mode: "standalone"
  // })
});