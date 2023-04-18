import { useState } from 'react'
import { Dialog } from '@headlessui/react'
import { useForm } from "react-hook-form";
import { useStore } from '@nanostores/react';
import { isLoginDialogOpen } from '../../stores/authenticationStore';

export default function SignUpDialog() {

  const _isLoginDialogOpen = useStore(isLoginDialogOpen);

  // if false then it is signUp
  let [isLogin, setIsLogin] = useState(true)

  const { register, handleSubmit, formState: { errors } } = useForm();

  function onSignup(data) {
    console.log(JSON.stringify(data))
  }

  function onLogin(data) {
    console.log(JSON.stringify(data))
  }

  function login(){
    return (
      <>
        <div className="flex min-h-full flex-col justify-center py-12 sm:px-6 lg:px-8 w-[32rem]">
          <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
            <div className="bg-white px-4 py-8 shadow sm:rounded-lg sm:px-10">
  
              <div className="sm:mx-auto sm:w-full sm:max-w-md pb-4">
                <img
                  className="mx-auto h-12 w-auto"
                  src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600"
                  alt="Your Company"
                />
                <h2 className="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Melde dich an!</h2>
                <p className="mt-2 text-center text-sm text-gray-600">
                  oder{' '}
                  <button className="font-medium text-indigo-600 hover:text-indigo-500" onClick={() => setIsLogin(false)}>
                    registriere dich hier
                  </button>
                </p>
              </div>
  
              <form className="space-y-6" onSubmit={handleSubmit(onLogin)}>
                <div>
                  <label htmlFor="email" className="block text-sm font-medium leading-6 text-gray-900">
                    Email Addresse
                  </label>
                  <div className="mt-2">
                    <input {...register("login-email")}
                      className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
  
                <div>
                  <label htmlFor="password" className="block text-sm font-medium leading-6 text-gray-900">
                    Passwort
                  </label>
                  <div className="mt-2">
                    <input {...register("login-password")}
                      className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
  
                <div className="flex items-center justify-between">
                  <div className="flex items-center">
                    <input {...register("login-remember")}
                      type="checkbox"
                      className="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-600"
                    />
                    <label htmlFor="remember-me" className="ml-2 mr-4 block text-sm text-gray-900">
                      Remember me
                    </label>
                  </div>
  
                  <div className="text-sm">
                    <button className="font-medium text-indigo-600 hover:text-indigo-500">
                      Passwort vergessen?
                    </button>
                  </div>
                </div>
  
                <div>
                  <button
                    type="submit"
                    className="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                  >
                    Anmelden
                  </button>
                </div>
              </form>
  
            </div>
          </div>
        </div>
      </>
    )
  }
  
  function signUp() {
  
    return (
      <>
        <div className="flex min-h-full flex-col justify-center py-12 sm:px-6 lg:px-8 w-[32rem]">
          <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
            <div className="bg-white px-4 py-8 shadow sm:rounded-lg sm:px-10">
  
              <div className="sm:mx-auto sm:w-full sm:max-w-md pb-4">
                <img
                  className="mx-auto h-12 w-auto"
                  src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600"
                  alt="Your Company"
                />
                <h2 className="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Registriere dich!</h2>
                <p className="mt-2 text-center text-sm text-gray-600">
                  oder{' '}
                  <button className="font-medium text-indigo-600 hover:text-indigo-500" onClick={() => setIsLogin(true)}>
                    melde dich hier an.
                  </button>
                </p>
              </div>
  
              <form className="space-y-6" onSubmit={handleSubmit(onSignup)}>
                <div>
                  <label htmlFor="email" className="block text-sm font-medium leading-6 text-gray-900">
                    Email Addresse
                  </label>
                  <div className="mt-2">
                    <input {...register("signup-email")}
                      className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
  
                <div>
                  <label htmlFor="password" className="block text-sm font-medium leading-6 text-gray-900">
                    Passwort
                  </label>
                  <div className="mt-2">
                    <input {...register("signup-password")}
                      className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="password" className="block text-sm font-medium leading-6 text-gray-900">
                    Passwort wiederholen
                  </label>
                  <div className="mt-2">
                    <input {...register("signup-password-repeat")}
                      className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
  
                <div>
                  <button
                    type="submit"
                    className="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                  >
                    Registrieren
                  </button>
                </div>
              </form>
  
            </div>
          </div>
        </div>
      </>
    )
  }

  return (
    <Dialog open={_isLoginDialogOpen} onClose={() => isLoginDialogOpen.set(!_isLoginDialogOpen)}>

      {/* The backdrop, rendered as a fixed sibling to the panel container */}
      <div className="fixed inset-0 bg-black/30" aria-hidden="true" />

      {/* Full-screen container to center the panel */}
      <div className="fixed inset-0 flex items-center justify-center p-4">

        {/* The actual dialog panel  */}
        <Dialog.Panel>

          {isLogin ? login() : signUp()}
          
        </Dialog.Panel>
      </div>
    </Dialog>
  )
}