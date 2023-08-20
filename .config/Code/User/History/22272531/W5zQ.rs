use std::fmt::Display;
fn longest_string<T, 'a>(s1: &'a str, s2: &'a str, ann: T) -> &'a str
where
T: Display {
    println!("announcement: {}", ann);
    
}


fn main() {
}