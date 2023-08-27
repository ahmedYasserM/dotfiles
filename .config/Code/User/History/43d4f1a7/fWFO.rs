// Visual Mode Grammer Rule => Noun + Verb


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

// I do not like the dashes, can you replace them with equal sign using The Visual Mode Grammer ?

------------------------------------------------------

//   crate
//    └── front_of_house
//        ├── hosting
//        │   ├── add_to_waitlist
//        │   └── seat_at_table
//        └── serving
//            ├── take_order
//            ├── serve_order
//            └── take_payment


// Can you convert the dashed list into numberd list using what you know about visual modes?

# Rust Modules Sheet Sheet

  - Start from the crate root

  - Declaring modules

  - Declaring submodules

  - Paths to code in modules

  - Private vs public

  - The use keyword