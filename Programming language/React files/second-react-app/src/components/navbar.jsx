import React from 'react'
import "./navbar.css"
import { useEffect } from 'react'

const Navbar = () => {
  //  useEffect(() => {
  //     alert("textind the return function");
    
  //     return () => {
  //       alert("Components is unmounting");
  //     }
  //   }, [])
  return (
    <div className="navbar">
      <ul>
        <li>Home</li>
        <li>About</li>
        <li>Contact</li>
      </ul>
    </div>
  )
}

export default Navbar