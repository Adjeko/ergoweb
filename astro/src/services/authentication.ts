import PocketBase from 'pocketbase';
import Cookies from 'js-cookie';

const pocketBaseAddress = 'http://167.86.93.112:8090';

const pb = new PocketBase(pocketBaseAddress);


export function signUpWithPassword(username: string, password: string){
  const data = {
    "username": username.split('@')[0],
    "email": username,
    "emailVisibility": true,
    "password": password,
    "passwordConfirm": password,
    "name": username.split('@')[0]
  };

  pb.collection('users').create(data)
  .then(() => {
    loginWithPassword(username, password);
  });
}

// login with credentials
export function loginWithPassword(username: string, password: string){
  pb.authStore.clear();
  pb.collection('users').authWithPassword(username, password)
  .then(() => {
    if(pb.authStore.isValid) {
      document.cookie = pb.authStore.exportToCookie({ path:'/', domain: 'localhost', httpOnly: false, secure: false});
    }
  });
}

// try to get a session from cookie or refresh auth
export function loginFromCookie(){
  let sessionCookie = Cookies.get('pb_auth');
  pb.authStore.loadFromCookie('pb_auth=' + sessionCookie);
  console.log(pb.authStore.isValid);
}

export function ssrIsCookieValid(){
  
}

// logout from current session
export function logout(){
  pb.authStore.clear();

  Cookies.remove('pb_auth');
}

// check if pocketbase isValid, instantiate if not
function checkPocketbaseStore(){

}

export function TestSession(){
  return pb.authStore.isValid + '\n' + pb.authStore.model?.email;
}