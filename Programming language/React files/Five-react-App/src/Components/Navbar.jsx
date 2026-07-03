import React from 'react'
import '../App.css'
import { memo } from 'react';

const Navbar = ({ callback, getcallback }) => {
    console.log('callback from App.jsx');
  return (
    <div>
        <p>This is the navbar of the react App </p>
        <p>{callback}</p>
        <button onClick={()=>{getcallback()}}>{getcallback()}</button>
    </div>
  )
}

export default memo(Navbar)
// export default Navbar   