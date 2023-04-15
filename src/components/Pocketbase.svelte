<script>
  import PocketBase from 'pocketbase';
    import { onMount } from 'svelte';

  let records
  let cookie

  const pb = new PocketBase('http://167.86.93.112:8090');

  function handleLogIn(){
    const authData = pb.collection('users').authWithPassword('test@example.com', '12345678')
    .then(()=> {
      records = pb.collection('test').getFullList({
      sort: '-created',
    }); 
  });
  }

  function handleLogOut(){
    pb.authStore.clear()
    records = pb.collection('test').getFullList({
      sort: '-created',
    }); 
  }

  onMount(() => {
    handleLogIn()

    document.cookie = pb.authStore.exportToCookie({ path:'/home', domain: 'localhost', httpOnly: false});
    cookie = pb.authStore.exportToCookie({ path:'/home', domain: 'localhost', httpOnly: false});
  });

  
  
</script>

{#await records}
<p>Pocketbase lädt...</p>
{:then record}
  {#if record}
    <p>{JSON.stringify(record[0].content)}</p>
    <p>{JSON.stringify(pb.authStore)}</p>
    <p>{JSON.stringify(pb.authStore.isValid)}</p>
    <p>{cookie}</p>
    <button type="button" class="bg-gray-400" on:click={handleLogOut}>LogOut</button>
    <button type="button" class="bg-gray-400" on:click={handleLogIn}>LogIn</button>
  {/if}
{:catch error}
<p class="text-red-600">{error}</p>
{/await}