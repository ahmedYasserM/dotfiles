use std::fmt::Display;
fn longest_string<'a, T>(s1: &'a str, s2: &'a str, ann: T) -> &'a str
where
    T: Display,
{
    println!("announcement: {}", ann);
    if s1.len() > s2.len() {
        s1
    } else {
        s2
    }
}

fn main() {


    println!("{}", longest_string("hellooo", "world", 33));


}
