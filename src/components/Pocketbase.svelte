<script>
  import PocketBase from 'pocketbase';

  let records

  const pb = new PocketBase('http://167.86.93.112:8090');

  const authData = pb.collection('users').authWithPassword('test@example.com', '12345678')
    .then(()=> {
      records = pb.collection('test').getFullList({
      sort: '-created',
    }); 
  });
  
</script>

{#await records}
<p>Pocketbase lädt...</p>
{:then record}
  {#if record}
    <p>{JSON.stringify(record[0].content)}</p>
  {/if}
{:catch error}
<p class="text-red-600">{error}</p>
{/await}