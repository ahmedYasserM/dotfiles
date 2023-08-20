fn main() {
    let mut x: i32 = 1;

    println!("x = {} at: {:p}", x, &x as *const i32);

    x += 1;

    println!("x = {} at: {:?}", x, &x as *const i32);

    let mut y: i32 = 1;

    println!("y = {} at: {:?}", y, &y as *const i32);
}
