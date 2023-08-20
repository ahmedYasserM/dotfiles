pub fn add(left: usize, right: usize) -> usize {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn exploration() {
        let result: usize = add(2, 2);
        assert_ne!(result, 3);
        // assert!(boolean)
        // assert_eq(resut == number)
        // assert_ne!()
    }
}
