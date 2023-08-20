#[derive(Debug)]
struct Person {
    name: String,
    email: String,
    age: u8,
}

fn main() {
    let p1: Person = Person {
        name: "Ali Karim".to_string(),
        email: "ali@gmail".to_string(),
        age: 20,
    };
    println!("person1: {:#?}", p1);
}
