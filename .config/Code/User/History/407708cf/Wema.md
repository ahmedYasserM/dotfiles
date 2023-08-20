- We can use trait bounds to specify a generic type can be any type that has certain behavior.

- Orphan Rule

  ![Alt text](imgs/img1.png)

- Implementations of a trait on any type that satisfis the trait bounds are called `blanket implementations`

- Lifetimes ensure that `references` are valid as long as we need them to be.

- Every reference in Rust has a lifetime, which is the scope for which that reference is valid.

