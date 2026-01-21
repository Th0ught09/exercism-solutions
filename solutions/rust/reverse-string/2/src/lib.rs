pub fn reverse(input: &str) -> String {
    let mut out = String::new();
    for char in input.chars().rev() {
        out.push(char);
    }
    out
}
