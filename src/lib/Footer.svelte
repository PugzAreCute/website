<script lang="ts">
	import env from '$env/static/public';
</script>
<footer>
	<p> Revision {env.PUBLIC_GIT_COMMIT} </p>
</footer>

<style>
footer{
	border-top: 5px dashed var(--border);
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: auto;
}
</style>
