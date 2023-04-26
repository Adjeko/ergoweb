import { PayPalScriptProvider, PayPalButtons } from "@paypal/react-paypal-js";

export default function Example() {

  return (
    <PayPalScriptProvider options={{ 
      "client-id": "AY-62OWVTWVTmx1CYZJ_girgS8Vn7ssTNIzWMw2ajWFWnDi2PA_dcpwFO1HZ9wHfdixX33OwhoLsFOzA",
      currency: "EUR" 
    }}>
      <PayPalButtons style={{ layout: "vertical" }}
        createOrder={(data, actions) => {
          return actions.order.create({
            purchase_units: [
              {
                amount: {
                  value: "1.99",
                },
              },
            ],
          });
        }}
        onApprove={(data, actions) => {
          return actions.order.capture().then((details) => {
            const name = details.payer.name.given_name;
            alert(`Transaction completed by ${name}`);
          });
        }} />
    </PayPalScriptProvider>
  );
}