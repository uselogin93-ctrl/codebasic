"use client"
import Link from 'next/link'
import React from 'react'
import About from '@/app/about/page'
import Contact from '@/app/contact/page'

const header = () => {
  return (
    <div className="w-full h-full bg-black text-white flex items-center justify-center">
      <div className='w-full h-[10vh] flex flex-row items-center justify-center'>
        <h1 className='w-[30%] h-[99%] text-3xl font-bold flex items-center justify-start pl-5'>
          Component
        </h1>
        <ul className='w-[70%] h-[99%] flex flex-row items-center justify-evenly list-none text-xl font-semibold'>
          <li className='cursor-pointer'> <Link href="/">Home</Link> </li>
          <li className='cursor-pointer'> <Link href="/about">About</Link> </li>
          <li className='cursor-pointer'> <Link href="/contact">Contact</Link> </li>
        </ul>
      </div>
    </div>
  )
}

export default header   