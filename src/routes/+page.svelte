<svelte:head>
    <title>PugzAreCute!</title> 
</svelte:head>
<script lang="ts">
	let body: HTMLElement;
	import { onMount } from "svelte";
	onMount(() => {
        // Future images will also rotate!
		body.querySelectorAll("img").forEach((e: HTMLElement) =>{
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
<div id="container" bind:this={ body } style="--body-image-rotation: { rotation }deg">
<h1>PugzAreCute</h1>
<img id="profile_photo" src="https://avatars.githubusercontent.com/u/62641095" alt="PugzAreCute">
<p>Hello, I am a pug!
    <br>
    I do stuff in C or Java sometimes.
    <br>
    Open for commissions. Use the contact page
</p>
</div>
<style>
    #profile_photo{
        border-radius: calc(var(--border-radius)*3);
        width: 10%;
        transition-duration: var(--animation-duration);
        margin: 1%;
    }
    #profile_photo:hover{
        transform: scale(1.1) rotateZ(var(--body-image-rotation)) 
    }
    p{
        font-size: large;
    }
    #container{
        width: 100%;
        display: flex;
        align-items: center;
        flex-direction: column;
    }
</style>