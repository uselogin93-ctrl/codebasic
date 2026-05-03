import Image from "next/image";
import { sumbitAction } from "@/action/forms";


export default function Home() {
  return (
    <div className="w-[40vw] h-[50vh] ml-2.5 mt-2.5 flex flex-col justify-center items-center shadow-xs shadow-gray-600 bg-gray-200 rounded-2xl">
      <div className="w-full h-[99%] flex justify-center items-center">
        <form action={sumbitAction} className="w-[80%] h-full flex flex-col justify-center items-start text-black gap-[5px]">
          <label htmlFor="name" className="h-[10%]">Name</label>
          <input type="text" name="name" id="name" className="w-full h-[20%] flex justify-start items-center border-2 border-black bg-transparent rounded-2xl text-black" />
          <label htmlFor="age" className="h-[10%]">Address</label>
          <input type="text" name="address" id="address" className="w-full h-[30%] flex justify-start items-center border-2 border-black bg-transparent rounded-2xl text-black" />
          <button type="submit" className="w-[30%] h-[20%] bg-gray-700 text-white rounded-2xl hover:bg-gray-500 font-bold text-2xl">Submit</button>
        </form>
      </div>
    </div>
  )};
