> Visual Mode Grammer Rule => Noun + Verb

```rs

mod front_of_house {

    mod hosting {
        fn add_to_waitlist() {}

        fn seat_at_table() {}
    }

    // create function -> give_order() {}
    // using The Grammer Rule -> Noun + Verb
    mod serving {
        fn take_order() {}

        fn take_order() {}

        fn serve_order() {}

        fn take_payment() {}
    }
}

```

> Can you fix the the following horizontal separator?

===

crate
└── front_of_house
├── hosting
│ ├── add_to_waitlist
│ └── seat_at_table
└── serving
├── take_order
├── serve_order
└── take_payment

---

> Can you convert the numberd list into dashed list using what you know about visual modes?

# Rust Modules Sheet Sheet

1. Start from the crate root

2. Declaring modules

3. Declaring submodules

4. Paths to code in modules

5. Private vs public

6. The use keyword

---

> The following C++ code will not compile, how to fix it?

```cpp

Vec4 CalculateNewVec(Vec4 a, Vec4 b, Vec4 c, Vec4 d)
{
    Vec3 result;

    result.x = a.x + b.x + c.x + d.x

    result.x = a.x + b.x + c.x + d.x

    result.x = a.x + b.x + c.x + d.x

    result.x = a.x + b.x + c.x + d.x

    return result;
}

```

---
