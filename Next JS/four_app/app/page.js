import Image from "next/image";
import FirstBlog from "./blog/page";

export default function Home() {
  return (
    <div className="w-[99vw] h-[99vh] ">
      <h1>this four Next JS</h1>
      <FirstBlog />
    </div>
  );
}
