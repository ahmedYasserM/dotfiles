#[derive(Debug)]
struct Person {
    name: String,
    age: i32,
}
fn main() {
    // let mut x: i32 = 1;

    // println!("x = {} at: {:p}", x, &x as *const i32);

    // x += 1;

    // println!("x = {} at: {:?}", x, &x as *const i32);

    // let mut y: i32 = 1;

    // println!("y = {} at: {:?}", y, &y as *const i32);

    let p1: &Person = &Person {
        name: "Ahmed Yasser".to_string(),
        age: 20,
    };
    // *const --> constant pointers
    // *mut --> mutable pointers

    println!("p1 is at: {:?}", p1 as *const i32);
}
