<script>
  import { loadStripe } from '@stripe/stripe-js'
  import { Elements, PaymentElement, LinkAuthenticationElement, Address } from 'svelte-stripe'
  import { onMount } from 'svelte'

  let stripe = null
  let processing = false
  let clientSecret = null
  let elements

  onMount(async () => {
    stripe = await loadStripe(import.meta.env.PUBLIC_STRIPE_KEY)
    clientSecret = await createPaymentIntent()
  })

  async function createPaymentIntent() {
    console.log("Send Request")
    const response = await fetch('http://localhost:3000/api/stripeintent.json', {
      method: 'POST',
      headers: {
        'content-type': 'application/json'
      },
      body: JSON.stringify({})
    })
    
    const { clientSecret } = await response.json()
    
    return clientSecret
  }

  async function submit() {}

</script>

{#if stripe  && clientSecret}

<p>Stripe LOADED</p>
<Elements 
  {stripe} 
  {clientSecret}
  theme="flat"
  labels="floating"
  variables={{ colorPrimary: '#7c4dff' }}
  rules={{ '.Input': { border: 'solid 1px #0002' } }}
  bind:elements >
  <form on:submit|preventDefault={submit}>
    <LinkAuthenticationElement />
    <PaymentElement />
    <Address mode="billing" />

    <button disabled={processing}>
      {#if processing}
        Processing...
      {:else}
        Pay
      {/if}
    </button>
  </form>
</Elements>

{:else}
<p>Stripe LOADING...</p>
{/if}