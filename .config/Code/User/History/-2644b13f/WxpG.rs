struct Person {
    name: String,
    email: String,
    age: u8,
}

fn main() {
    let p1: Person = Person {
        name: "Ahmed Yasser".to_string(),
        email: "ahmed_yasser".to_string(),
        age: 20,
    };

    let name: String = p1.name;
    let email: String = p1.email;

    println!("name: {}", name);
    println!("email: {}", email);
    println!("age: {}", p1.age);

    println!("person1: {:#?}", p1.age);
}
