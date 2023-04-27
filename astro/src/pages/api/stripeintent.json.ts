import type { APIRoute } from 'astro';
import Stripe from 'stripe'

const stripe = new Stripe(import.meta.env.SECRET_STRIPE_KEY, {
  apiVersion: '2022-11-15',
  typescript: true,
})

export async function get({params, request} : any) {
  return {
    body: JSON.stringify({
      clientSecret: "paymentIntent.client_secret"
    })
  }
}

export async function post() {
  
  const paymentIntent = await stripe.paymentIntents.create({
    amount: 2000,
    currency: 'usd',
    automatic_payment_methods: {
      enabled: true
    }
  })

  return {
    body: JSON.stringify({
      clientSecret: paymentIntent.client_secret
    })
  }
}