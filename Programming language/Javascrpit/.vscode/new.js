let a =()=>{
    let a = 10;
    console.log(a);
    let b=()=>{
        let a = 20;
        console.log(a);
        let c=()=>{
            let a = 30;
            console.log(a);
        }
        c();
    }
    return b();
}; 
a();

