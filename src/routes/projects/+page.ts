import type { OpenGraphData } from "$lib/types";

export function load() {
    let opengraph: OpenGraphData = {
        title: 'PugzAreCute\'s Projects!',
        image: 'https://avatars.githubusercontent.com/u/62641095',
        url: 'https://pugzarecute.com/projects',
        description: `
        Look at my projects!
        Feel free to contact me if you need some work done or if there are bugs with any project.
        `,
        site_name: 'PugzAreCute',
        color: '#82204A'
    }
	return {
		og: opengraph
	};
}