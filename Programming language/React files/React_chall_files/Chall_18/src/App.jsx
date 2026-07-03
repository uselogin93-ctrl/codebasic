import { useState, useEffect } from 'react'
import './App.css'

function App() {
  const [api, setApi] = useState([]);

  const fetchApi = async () => {
    let url = await fetch("https://jsonplaceholder.typicode.com/posts");
    let data = await url.json();
    setApi(data);
    console.log(data);
  }
  useEffect(() => {
    fetchApi();
  }, [])

  return (
    <>
      <div key={api.id} className='w-[99vw] h-[100vh] inline-grid grid-cols-5 gap-x-[4px] gap-y-[15px] justify-items-center items-center' style={{ scrollbarWidth: "none" }}>
        {api.map((api) => {
          if (api.id <= 15) {
            return <div className='w-[19vw] h-[40vh] flex flex-col justify-center items-center border-4 border-white rounded-3xl bg-fuchsia-400/70'>
              <div className='w-[99%] h-[20%] flex justify-start items-center'>
                <h1 className='text-blue-300 text-4xl font-bold ml-[10px]'>{api.id}</h1>
              </div>
              <div className='w-[99%] h-[30%] flex justify-center items-center p-[2px]'>
                <h4 className='text-white text-md font-stretch-75%'>{api.title}</h4>
              </div>
              <div className='w-[99%] h-[50%] flex justify-center items-start overflow-y-scroll p-[5px]' style={{ scrollbarWidth: "none" }}>
                <p className='text-shadow-gray-600 text-sm'>{api.body}</p>
              </div>
            </div>
          }
        })}
      </div>
    </>
  )
}

export default App