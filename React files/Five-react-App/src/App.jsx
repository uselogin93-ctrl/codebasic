import { useState, useMemo, useCallback } from 'react'
import { useForm } from "react-hook-form"
import './App.css'
import Navbar from './Components/Navbar.jsx'

const num = new Array(100).fill(30).map((_, i) => {
  return {
    index: i,
    value: i === 29
  }
})
function App() {

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors, isSubmitting },
  } = useForm()

  const delay = (d) => {
    return new Promise((resolve) => {
      setTimeout(() => {
        resolve()
      }, d * 1000);
    })
  }
  const onSubmit = async (data) => {
    // await delay(4)
    let ret = await fetch("http://localhost:3000/")
    let e_data = await ret.text()
    console.log(data,e_data);
  }

  const [Number, setNumber] = useState(num)
  const [callback, setcallback] = useState("Good we are get value")

  const countValue = useMemo(() => Number.find(item => item.value === true), [Number])
  const getcallback = useCallback(() => { return 'now we are getting callback from Navbar' }, [])

  return (
    <>
      {isSubmitting && <p>Submitting...</p>}
      <div>
        <Navbar callback={callback} getcallback={getcallback} />
        <div>

          <form onSubmit={handleSubmit(onSubmit)}>
            <input type="text" name="username" {...register("username", { required: { value: true, message: "It need to fill " }, minLength: { value: 5, message: "Username must be at least 5 characters long" }, maxLength: { value: 10, message: "Username must be at most 10 characters long" } })} />
            {errors.username && <span>{errors.username.message}</span>}
            <br />
            <input type="password" name="password" {...register("password", { required: { value: true, message: "It need to fill " }, maxLength: { value: 8, message: "Password must be at most 8 characters long" } })} />
            {errors.password && <span>{errors.password.message}</span>}
            <br />
            <input disabled={isSubmitting} type="submit" value="Submit" />
          </form>
        </div>
      </div>
    </>
  )
}

export default App
