export default async function Page({ params }) {
  const { slug } = await params
  let lang = ["pyhton", "javascript", "nextjs", "nodejs", "reactjs"]
  if (lang.includes(slug)) {
      return <div>My Post: {slug}</div>
  } else{
        return <div>Post Not Found</div>
  }
}