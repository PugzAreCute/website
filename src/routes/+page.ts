import type { OpenGraphData } from "$lib/types";

export function load() {
    let opengraph: OpenGraphData = {
        title: 'PugzAreCute!',
        image: 'https://avatars.githubusercontent.com/u/62641095',
        url: 'https://pugzarecute.com/contact',
        description: `
        Hello!
        I am a pug who programs in C or Java!
        Take a look at my site(although it is still a WIP)
        `,
        site_name: 'PugzAreCute',
        color: '#82204A'
    }
	return {
		og: opengraph
	};
}