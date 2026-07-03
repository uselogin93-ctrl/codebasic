import React from 'react'
import { useState, useEffect, useRef } from 'react'

const Box = () => {
  // const [name, setName] = useState('Enter your name');
  // const [email, setEmail] = useState('Enter your email');
  // const nameset = (e) => {
  //   setName(e.target.value);
  // }
  // const emailset = (e) => {
  //   setEmail(e.target.value);
  // }
  const [form, setForm] = useState({});
  const displayName = useRef(0);
  const displayEmail = useRef(0);
  const formset = (e) => {
    setForm({ ...form, [e.target.type]: e.target.value });
  }
  const display = () => {
    console.log(form);
  }

  return (
    <div className="Box">
      <p>Hi I am a box which appears when the button is clicked</p>
      <div className="form">
        {/* <input className='input' type="text" value={name} onChange={nameset} />
        <input className='input' type="email" value={email} onChange={emailset} /> */}
        <input className='input' type="text" value={form.text ? form.text : ''} onChange={formset} ref={displayName} />
        <input className='input' type="email" value={form.email ? form.email : ''} onChange={formset} ref={displayEmail} />
        <button onClick={display}><a href={`./Temp_files.pdf`}>Submit</a></button>
      </div>
    </div>
  )
}

export default Box