"use client"
import { useSession, signIn, signOut } from "next-auth/react"

export default function Component() {
  const { data: session } = useSession()
  if(session) {
    console.log(session)
    return <>
      <h1 className="text-2xl font-bold text-white min-w-[200px] max-w-[500px] h-20 p-1.5 m-0.5 flex justify-center items-center">Signed in as {session.user.email}</h1><br/>
      <button onClick={() => signOut()} className="text-2xl font-bold text-white w-[200px] h-20 p-1.5 m-0.5 flex justify-center items-center bg-red-700 hover:bg-red-800 rounded-2xl shadow-xs shadow-gray-400 hover:shadow-gray-500">Sign out</button>
    </>
  }
  return <>
    <h1 className="text-2xl font-bold text-white min-w-[200px] max-w-[500px] h-20 p-1.5 m-0.5 flex justify-center items-center">Not signed in</h1><br/>
    <button onClick={() => signIn()} className="text-2xl font-bold text-white w-[200px] h-20 p-1.5 m-0.5 flex justify-center items-center bg-blue-700 hover:bg-blue-800 rounded-2xl shadow-xs shadow-gray-400 hover:shadow-gray-500">Sign in</button>
  </>
}