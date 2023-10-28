<nav>
	<span>PugzAreCute</span>
	<div style="--navbar-box-rotation: { rotation }deg" bind:this={ navigationLinks }>
		<a href="/">Home</a>
		<a href="/ci">CI server</a>
		<a href="/contact">Contact</a>
		<a href="https://uptime.pugzarecute.com/status/argon">Server Uptime</a>
	</div>
</nav>
<script lang="ts">
	let navigationLinks: HTMLElement;
	import { onMount } from "svelte";
	onMount(() => {
		navigationLinks.querySelectorAll("a").forEach((e: HTMLElement) =>{
		e.addEventListener("mouseleave",setRandomRot)
	})
	})
	function rotationRandom(): number{
		let max = 15;
		let min = -15;
		let out = Math.floor(Math.random() * (max-min) + min);
		return out;
	}
	let rotation = rotationRandom();

	function setRandomRot(event: MouseEvent){
		rotation = rotationRandom()
	}

</script>
<style>
	nav {
		display: flex;
		align-items: center;
		justify-content: space-between;
		border-bottom: 5px dashed var(--border);
		flex-wrap: wrap;
		width: 100%;
	}
	div{
		display: flex;
		align-items: end;
		justify-content: space-between;
	}

	span {
		font-size: 3em;
		padding-bottom: 10px;
		margin-left: 15px;
	}

	a {
		margin-left: 7px !important;
		margin: 15px;
		margin-right: 3px !important;
		color: var(--text);
		text-decoration: none;
		background-color: var(--accent-pink);
		padding: 5px;
		border-radius: var(--border-radius);
		border: 2px dashed var(--border);
		transition-duration: var(--animation-duration);
	}
	a:hover{
		transform: scale(1.1) rotateZ(var(--navbar-box-rotation))
	}
</style>
