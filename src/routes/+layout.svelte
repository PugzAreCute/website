<script lang="ts">
	import '../app.css';
	import Navbar from '$lib/Navbar.svelte';
	import Footer from '$lib/Footer.svelte';
	import '@fontsource-variable/pixelify-sans';
	import type { PageData } from './$types';

	import { page } from '$app/stores';
	import type { OpenGraphData } from '$lib/types';
	let data: OpenGraphData = $page.data.og;

</script>
<svelte:head>
	<!-- Required OG properties -->
	<meta property="og:title" content="{ data.title }" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="{ data.image }" />
	<meta property="og:url" content="{ data.url }" />

	<!-- Optional OG properties -->
	<meta property="og:description" content="{ data.description }" />
	<meta property="og:site_name" content="{ data.site_name }" />

	<!-- Non-Standard Widely-Used properties-->
	<meta name="msapplication-navbutton-color" content="{ data.color }">
	<meta name="theme-color" content="{ data.color }">
</svelte:head>


<div>
	<Navbar />

	<main>
		<slot />
	</main>
	<Footer />

</div>


<style>
	div {
		min-height: 100vh;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}

	main {
		display: flex;
		flex-direction: column;
		align-items: center;
		width: 100%;
	}
</style>
