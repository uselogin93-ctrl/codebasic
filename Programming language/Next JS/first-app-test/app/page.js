"use client"
import Header from "@/components/header";
import Image from "next/image";


export default function Home() {
  const handleClick = async () => {
    let apiData = [
      {
        name: "Shashi",
        age: 19,
      },
      {
        name: "Nishi",
        age: 24,
      }
    ]
    let res = await fetch("/api/add", {
      method: "POST", headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(apiData),
    });
    let data = await res.json();
    console.log(data);
  };

  return (
    <div className="w-[99vw] h-[90vh] flex flex-col justify-start items-start">
      <button onClick={handleClick} className="ml-3 mt-3 w-[150px] h-[60px] border-none rounded-2xl flex justify-center items-center text-2xl text-white bg-gray-700 font-bold hover:bg-gray-500">Add Route</button>
    </div> 
  );
}
