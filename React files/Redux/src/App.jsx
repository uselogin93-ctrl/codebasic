import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Try from './components/try.jsx'
import { useSelector, useDispatch } from 'react-redux'
import { decrement, increment } from './redux/counter/counterSlice.js'

function App() {
  const count = useSelector((state) => state.counter.value)
  const dispatch = useDispatch()

  return (
    <>
      <Try />
      <button onClick={() => dispatch(decrement())}>
        <span>-</span>
      </button>
      {count}
      <button onClick={() => dispatch(increment())}>
        <span>+</span>
      </button>
    </>
  )
}

export default App
