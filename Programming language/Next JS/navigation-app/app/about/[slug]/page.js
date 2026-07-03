"use client"
import React from 'react'
import { useParams } from 'next/navigation'
import { useRouter } from 'next/navigation'

const about = () => {
    const params = useParams();
    
    return (
        <div>
            <p>This is the About Page </p>
            <p>This is the About Page {params.slug}</p>

            
        </div>
    )
}

export default about