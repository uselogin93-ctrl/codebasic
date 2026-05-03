import React from 'react'
import Nav from './nav'
import { useContext } from 'react'
import { c_Contex } from '../context/context'

const harders = () => {
    const value = useContext(c_Contex)
  return (
    <div>
        harders
        <button onClick={() => value.setCount((count) => count + 1)}>
        <Nav/>
        </button>
    </div>
  )
}

export default harders  