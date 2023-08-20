fn main() {
    let mut x: i32 = 1;

    println!("x = {} at: {:p}", x, x);

    x += 1;

    println!("x = {} at: {:?}", x, &x as *const i32);
}
