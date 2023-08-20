#[derive(Debug)]
struct Person {
    name: String,
    email: String,
    age: u32,
}

fn main() {
    let p1: Person = Person {
        name: "Ahmed Yasser".to_string(),
        email: "ahmed-yasser@gmail.com".to_string(),
        age: 20,
    };

    let name: String = p1.name;

    let email: String = p1.email;

    let age: u32 = p1.age;

    println!("name: {name}, email: {email}, and age: {age}");

    println!("p1: {:#?}", p1);
}
