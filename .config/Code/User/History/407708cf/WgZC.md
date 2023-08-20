- We can use trait bounds to specify a generic type can be any type that has certain behavior.

- Orphan Rule

  ![Alt text](imgs/img1.png)

- Implementations of a trait on any type that satisfis the trait bounds are called `blanket implementations`

- Lifetimes ensure that `references` are valid as long as we need them to be.

- Every reference in Rust has a lifetime, which is the scope for which that reference is valid.

- The main aim of `lifetimes` is to prevent `dangling references`, which cause a program to reference data other than the data it's intended to reference

- The Rust compiler has a `borrow checker` that compares scopes to determine whether all borrows are valid.

- The `patterns` programmed into Rust's analysis of references are called the `lifetime elision rules`. These aren't rules for programmers to follow; they're a set of particular cases that the compiler will consider, an if your code fits these cases, you don't need to write lifetimes explicity.


- Lifetimes on `function or method parameters` are called `input lifetimes`, and lifetimes on
