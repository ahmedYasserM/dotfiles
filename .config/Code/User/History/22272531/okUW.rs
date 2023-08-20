fn main() {
    let x: i32 = 1;

    println!("x at: {:?}", &x as *const i32);
}
