fn main() {
    let mut x: i32 = 1;

    println!("x = {} at: {:?}", x, &x as *const i32);

    x += 1;

    println!("x = {} at: {:?}", x, &x as *const i32);
}
