import { NextResponse } from 'next/server';

export async function POST(request) {
    let data = await request.json();
    console.log("Data received in API route:", data);
    return NextResponse.json({ success: true , data});
}