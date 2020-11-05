import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

// // Start writing Firebase Functions
// // https://firebase.google.com/docs/functions/typescript
//
// export const helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

admin.initializeApp();

exports.reach = functions.region('europe-west3').https.onRequest(async (request, response) => {
    // console.log('Reach Request headers: ' + JSON.stringify(request.headers));
    // console.log('Reach Request body: ' + JSON.stringify(request.body));
    // console.log('Reach Request query: ' + JSON.stringify(request.query));
    // console.log('Reach Request app: ' + JSON.stringify(request.app));

    const reach = admin.firestore().collection('reach');

    //create new acquisition
    await reach.add({
        req: request.body,
    });

    response.sendStatus(200);
});