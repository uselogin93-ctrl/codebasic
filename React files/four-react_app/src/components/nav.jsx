import React from 'react'
import { useContext } from 'react'
import { c_Contex } from '../context/context'

const nav = () => {
    const value = useContext(c_Contex)
  return (
    <div>
        The count is {value.count}
    </div>
  )
}

export default nav