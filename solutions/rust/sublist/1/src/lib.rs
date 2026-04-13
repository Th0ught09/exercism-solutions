#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist(first_list: &[i32], second_list: &[i32]) -> Comparison {
    if first_list.len() == second_list.len() {
        for i in 0..first_list.len() {
            if first_list[i] != second_list[i] {
                return Comparison::Unequal;
            }
        }
        return Comparison::Equal;
    }
    if first_list.is_empty() {
        return Comparison::Sublist;
    } else if second_list.is_empty() {
        return Comparison::Superlist;
    }
    let mut dead = 0;
    if first_list.len() > second_list.len() {
        for i in 0..first_list.len() {
            dead = 0;
            if second_list[0] == first_list[i] {
                for j in 0..second_list.len() {
                    if second_list[j] != first_list[i + j] {
                        dead = 1;
                        break;
                    }
                }
                if dead == 1 {
                    continue;
                }
                return Comparison::Superlist;
            }
        }
        Comparison::Unequal
    } else {
        for i in 0..second_list.len() {
            dead = 0;
            if second_list[i] == first_list[0] {
                for j in 0..first_list.len() {
                    if second_list[i + j] != first_list[j] {
                        dead = 1;
                        break;
                    }
                }
                if dead == 1 {
                    continue;
                }
                return Comparison::Sublist;
            }
        }
        Comparison::Unequal
    }
}
