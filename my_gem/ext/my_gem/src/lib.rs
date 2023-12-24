use magnus::{define_global_function, function};

fn rs_addition(a: i32, b: i32) -> i32 {
    a + b
}

#[magnus::init]
fn init() {
    define_global_function("rs_addition", function!(rs_addition, 2));
}