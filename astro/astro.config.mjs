import { defineConfig } from 'astro/config';
import tailwind from "@astrojs/tailwind";
import svelte from "@astrojs/svelte";
import node from "@astrojs/node";
import react from "@astrojs/react";


// https://astro.build/config
export default defineConfig({
  integrations: [tailwind(), svelte(), react()],
  output: "server",
  adapter: node({
    mode: "standalone"
  })
});