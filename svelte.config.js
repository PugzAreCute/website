import { vitePreprocess } from '@sveltejs/kit/vite';

import adapter from '@sveltejs/adapter-node';

export default {
	preprocess: vitePreprocess(),
	kit: {
		adapter: adapter()
	}
};