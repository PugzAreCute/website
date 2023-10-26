<script lang="ts">
	import '../app.css';
	import Navbar from '$lib/Navbar.svelte';
	import Footer from '$lib/Footer.svelte';
</script>


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
