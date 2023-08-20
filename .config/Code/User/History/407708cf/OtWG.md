- We can use trait bounds to specify a generic type can be any type that has certain behavior.

- Orphan Rule

  ![Alt text](imgs/img1.png)

- Implementations of a trait on any type that satisfis the trait bounds are called `blanket implementations`

## Lifetimes

- Lifetimes ensure that `references` are valid as long as we need them to be.

- Every reference in Rust has a lifetime, which is the scope for which that reference is valid.

- The main aim of `lifetimes` is to prevent `dangling references`, which cause a program to reference data other than the data it's intended to reference

- The Rust compiler has a `borrow checker` that compares scopes to determine whether all borrows are valid.

- The `patterns` programmed into Rust's analysis of references are called the `lifetime elision rules`. These aren't rules for programmers to follow; they're a set of particular cases that the compiler will consider, an if your code fits these cases, you don't need to write lifetimes explicity.

- Lifetimes on `function or method parameters` are called `input lifetimes`, and lifetimes on `return values` are called `output lifetimes`

- The compiler uses three rules to figure out the lifetimes of the references when there aren’t explicit annotations. The first rule applies to input lifetimes, and the second and third rules apply to output lifetimes. If the compiler gets to the end of the three rules and there are still references for which it can’t figure out lifetimes, the compiler will stop with an error. These rules apply to fn definitions as well as impl blocks.


- The first rule is that the compiler assigns a lifetime parameter to each parameter that’s a reference. In other words, a function with one parameter gets one lifetime parameter: fn foo<'a>(x: &'a i32); a function with two parameters gets two separate lifetime parameters: fn foo<'a, 'b>(x: &'a i32, y: &'b i32); and so on. 

