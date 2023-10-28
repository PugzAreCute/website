import type { OpenGraphData } from "$lib/types";

export function load() {
    let opengraph: OpenGraphData ={
        title: 'Contact PugzAreCute!',
        image: 'https://avatars.githubusercontent.com/u/62641095',
        url: 'https://pugzarecute.com/contact',
        description: `
        Contact me!
        Feel free to inform me about any problems or suggestions with my work!
        `,
        site_name: 'PugzAreCute',
        color: '#82204A'
    }
	return {
		og: opengraph
	};
}