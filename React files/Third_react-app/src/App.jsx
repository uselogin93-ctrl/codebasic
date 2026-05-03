import { useState, useRef } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Box from './components/box.jsx'

function App() {
  const FirstImg = useRef(0);
  const SecondImg = useRef(0);
  const UseBox = useRef(0);
  const iframeBox = useRef(0);
  const [showdiv, setShowdiv] = useState(false);
  const BoxFun = () => {
    setShowdiv(true);
    console.log("Hello");
  }

  return (
    <>
      <div>
        <a href="https://vite.dev" target="_blank" ref={FirstImg}>
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank" ref={SecondImg}>
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React</h1>
      <div className="card">
        <button onClick={() => { FirstImg.current.innerHTML = `<img src=./react.svg className="logo react" alt="React logo"/>`; SecondImg.current.innerHTML = `<img src=./vite.svg className="logo" alt="Vite logo"/>` }}>
          The images will change
        </button>
        <button onClick={() => { SecondImg.current.innerHTML = `<img src=./react.svg className="logo react" alt="React logo"/>`; FirstImg.current.innerHTML = `<img src=./vite.svg className="logo" alt="Vite logo"/>` }}>
          The images will Reset
        </button>
        <p>
          Edit <code>src/App.jsx</code> and save to test HMR
        </p>
      </div>
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>
      <button onClick={BoxFun}>Click to add new content</button>
      <div ref={UseBox}>
        {showdiv && <Box />}
      </div>
      <button onClick={() => { iframeBox.current.src = "./Temp_files.pdf"; }}>
        Open PDF
      </button>
      <div className='box'>
        <iframe src="" frameborder="0" ref={iframeBox} ></iframe>
      </div>

    </>
  )
}

export default App
