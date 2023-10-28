<svelte:head>
    <title>PugzAreCute?</title> 
</svelte:head>

<h1>PugzAreCute</h1>
<img class="profile_photo" src="https://avatars.githubusercontent.com/u/62641095" alt="PugzAreCute">
<p>Hello, I am a pug!
    <br>
    I do stuff in C or Java sometimes.
    <br>
    Open for commissions. Use the contact page
</p>
<style>
    .profile_photo{
        border-radius: calc(var(--border-radius)*3);
        width: 10%;
        transition-duration: var(--animation-duration);
        margin: 0.2%;
    }
    .profile_photo:hover{
        transform: scale(1.1) rotateZ(10deg) /* Make this random at some point */
    }
    p{
        font-size: large;
    }
</style>