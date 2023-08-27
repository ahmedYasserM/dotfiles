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

// I do not like the dashes, can you make the separator 

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