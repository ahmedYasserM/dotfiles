#[allow(unused_imports)]
use std::ops::Index;

#[allow(unused_imports)]
use std::collections::{hash_map::Entry, HashMap};

fn median(nums: &mut Vec<i32>) -> i32 {
    nums.sort();

    let n: usize = nums.len() - 1;

    if (n + 1) % 2 != 0 {
        nums[n / 2]
    } else {
        (nums[n / 2] + nums[n / 2 + 1]) / 2
    }
}

fn main() {
    let mut nums: Vec<i32> = vec![1, 3, 3, 3, 4, 4, 4, 6, 6, 6, 9];

    println!("median is: {}", median(&mut nums));
}
