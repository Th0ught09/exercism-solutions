#[derive(Debug, PartialEq)]
pub struct Clock {
    minutes: i32,
    hours: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let mut final_minutes = minutes;
        let mut final_hours = hours;
        while final_minutes >= 60 {
            final_minutes -= 60;
            final_hours += 1;
        }
        while final_minutes < 0 {
            final_minutes += 60;
            final_hours -= 1;
        }
        while final_hours >= 24 {
            final_hours -= 24;
        }
        while final_hours < 0 {
            final_hours += 24;
        }
        Clock {
            minutes: final_minutes,
            hours: final_hours,
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        let mut new_minutes = self.minutes + minutes;
        let mut new_hours = self.hours;
        while new_minutes < 0 {
            if new_hours == 0 {
                new_hours += 24;
            }
            new_hours -= 1;
            new_minutes += 60;
        }
        Clock::new(new_hours, new_minutes)
    }
    pub fn to_string(&self) -> String {
        format!("{:0>2}:{:0>2}", self.hours, self.minutes)
    }
}
