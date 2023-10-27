<svelte:head>
    <title>Projects!</title> 
</svelte:head>

<h1>Projects!</h1>
<div class="fb_projects"></div>
<style>
    .fb_projects{
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }
</style>

<!-- TODO: Stop being lazy

Make it look like the papermc page
use svelte-virtual-scroll-list and just swap the array
keep the array in a file on ghub
possible tabs: Personal Projects, Comissioned Projects
also add upcoming feature(grey it out and stuff)
so like the card
|FULL WIDTH IMAGE
|TILL BORDER
|BEAUTIFUL image
|wow
|nice
|dotted border, rounded corner
|name
|ghub link
| if commissioned, comissioner name

have 2 components, Project and CommisionedComponent(have stuff like commissioner name)

onhover: zoom in, shadow. onclick, redirect to curse.
-->