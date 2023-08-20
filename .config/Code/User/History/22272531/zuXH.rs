struct ImportantExerpt<'a> {
    part: &'a str,
}

impl<'a> ImportantExerpt<'a> {
    fn level<'a, 'b>(&'a self, announcement: &'b str) -> &'a str {
        println!("Attention please: {}", announcement);
        self.part
    }
}

// the first elision rule
// there are two input lifetimes here so when we apply the first Elision Rule -->
// when we apply the third elision rule
// the static lifetime --> the affected refere
fn main() {
    let s: &'static str = "hello world!!!";
}
