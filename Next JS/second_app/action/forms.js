import fs from 'fs/promises';
export const sumbitAction = async (e) => {
    "use server"
    console.log(e.get("name"), e.get("address"))
    await fs.writeFile("data.text", `Name : ${e.get("name")}, Address : ${e.get("address")}`)
  }