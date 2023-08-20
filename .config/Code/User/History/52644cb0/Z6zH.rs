pub fn add(left: usize, right: usize) -> usize {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn exploration() {
        let result: usize = add(2, 2);
        let result: bool = if result == 4 {true} else {false};
        // assert_eq!(result, 4);
        assert!(result);
    }
    
    // #[test]
    // fn another() {
    //     panic!("make this test fails!!!");
    // }
}
