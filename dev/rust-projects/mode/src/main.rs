#[allow(unused_imports)]
use std::ops::Index;

#[allow(unused_imports)]
use std::collections::{hash_map::Entry, HashMap};

fn mode(nums: Vec<i32>) -> i32 {
    let mut count_map: HashMap<i32, u32> = HashMap::new();

    // max_record(value, count)
    let mut max_record: (i32, u32) = (0, 0);
    for num in nums {
        let c: &mut u32 = count_map.entry(num).or_insert(0);
        *c += 1;

        if *c > max_record.1 {
            max_record.0 = num;
            max_record.1 = *c;
        }
    }

    max_record.0
}

fn main() {
    let mut nums: Vec<i32> = vec![1, 3, 3, 3, 4, 4, 4, 6, 6, 6, 9];

    println!("mode is: {}", mode(nums));
}
