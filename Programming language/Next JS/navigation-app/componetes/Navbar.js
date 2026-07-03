"use client"
import React from 'react'
import { usePathname } from "next/navigation";
import { useRouter } from 'next/navigation'

const Navbar = () => {
    const pathname = usePathname();
    const router = useRouter()
    console.log(pathname);
    return (
        <div className="w-[100vw] h-[10vh] flex flex-col">
            <p>Hi this a Navbar div and the pathname:{pathname}</p>
            <button type="button" onClick={() => router.push('/')}>
                Home
            </button>
            <button type="button" onClick={() => router.push('/about/my-about-page')}>
                About
            </button>
        </div>
    );
};

export default Navbar   