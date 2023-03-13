
export const get = ({ params, request }) => {
  return {
    body: JSON.stringify({
      message: "This was a GET!"
    })
  }
};