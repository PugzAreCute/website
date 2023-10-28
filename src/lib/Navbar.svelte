<nav>
	<span>PugzAreCute</span>
	<div>
		<a href="/">Home</a>
		<a href="/ci">CI server</a>
		<a href="/contact">Contact</a>
		<a href="https://uptime.pugzarecute.com">Server Uptime</a>
	</div>
</nav>
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
		transform: scale(1.1) rotateZ(10deg) /* Make this random at some point */
	}
</style>
