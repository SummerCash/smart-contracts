extern "C" {
    fn __ursa_log(msg: *const u8, len: usize); // Get vm-provided log method
}

static mut LAST_MOVE: i32 = 10; // Init last move
static mut ROUNDS_PLAYED: i32 = 0; // Init rounds

#[no_mangle]
pub extern "C" fn rock() -> i32 {
    let message = "played rock".as_bytes();

    unsafe {
        if LAST_MOVE == 10 { // Check is starting game
            LAST_MOVE = 0; // Set move
            ROUNDS_PLAYED = 0; // Set rounds played
        }   
    }

    unsafe {
        ROUNDS_PLAYED+=1; // Increment rounds

        __ursa_log(message.as_ptr(), message.len()); // Log
    }

    return 0; // Return success
}