import React from 'react'
import { useState } from 'react'
import { useEffect } from 'react'
import { useRef } from 'react'
import Navbar from './components/navbar'
function App() {
  // const bgred = useRef(0)
  // const [count, setCount] = useState(0)
  const [showbtn, setShowbtn] = useState(true)
  const [todos, setTodos] = useState([
    {title:"go to market", desc:"you need to go to market to buy food"},
    {title:"go to mall", desc:"you need to go to mall to buy clothes"},
    {title:"go to school", desc:"you need to go to school to learn things"},
    {title:"go to college", desc:"you need to go to college to get degree"},
    {title:"go to office", desc:"you need to go to office to earn money"}
  ])

  // useEffect(() => {
  //   console.log(`changed ${bgred.current}`);
  //   bgred.current.style.backgroundColor="red"
  // },[])

  const Todo = ({todo})=>{ return (
    <>
      <h2>this is todo title {todo.title}</h2>
      <h2>this is todo title {todo.desc}</h2>
    </>
  )}
  return (
    <>
      {/* <Navbar /> */}
      <h1>Hi Shashikant Giri</h1>
      {/* <p>This is count of page reloads {count}</p> */}
      {showbtn?<button>This button condition is true</button>:<button>This button condition is false</button>}
      <button onClick={() => setShowbtn(!showbtn)}>Click Me</button>
      {todos.map(todo=>{
        return <Todo todo={todo} key={todo.title}/>
      })}
    </>
  )
}

export default App