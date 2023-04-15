import PocketBase from 'pocketbase';

const pocketBaseAddress = 'http://167.86.93.112:8090';

const pb = new PocketBase(pocketBaseAddress);

// new sign up or login with credentials
export function loginWithPassword(username: string, password: string){
  pb.collection('users').authWithPassword(username, password)
  .then(() => {
    if(pb.authStore.isValid) {
      document.cookie = pb.authStore.exportToCookie({ path:'/', domain: 'localhost', httpOnly: false});
    }
  });
}

// try to get a session from cookie or refresh auth
export function loginFromCookie(){

}

export function ssrIsCookieValid(){
  
}

// logout from current session
export function logout(){
  pb.authStore.clear();
}

// check if pocketbase isValid, instantiate if not
function checkPocketbaseStore(){

}