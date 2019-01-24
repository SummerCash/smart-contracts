extern "C" {
    fn __ursa_log(msg: *const u8, len: usize); // Get vm-provided log method
}

static mut LAST_MOVE: i32 = 10; // Init last move
static mut ROUNDS_PLAYED: i32 = 0; // Init rounds

#[no_mangle]
pub extern "C" fn make_move(move_num: i32) -> i32 {
    let message: &[u8]; // Init message buffer
    let error_message = "player made invalid move!".as_bytes(); // Init err message
    let lost_message = "you lost this round!".as_bytes(); // Init lost message
    let won_message = "you won this round!".as_bytes(); // Init won message

    unsafe {
        match move_num { // Handle move message
            0 => message = "played rock".as_bytes(),
            1 => message = "played paper".as_bytes(),
            2 => message = "played scissors".as_bytes(),
            _ => {__ursa_log(error_message.as_ptr(), error_message.len()); return 1}, // Log error
        }

        if LAST_MOVE == 10 || ROUNDS_PLAYED == 6 { // Check is starting game or should start game
            ROUNDS_PLAYED = 0; // Set rounds played
        } else {
            match LAST_MOVE { // Handle other player moves
                1 => __ursa_log(lost_message.as_ptr(), lost_message.len()), // Log lost
                2 => __ursa_log(won_message.as_ptr(), won_message.len()), // Log lost
                _ => __ursa_log(error_message.as_ptr(), error_message.len()), // Log error
            }
        }

        LAST_MOVE = move_num; // Set move
    }

    unsafe {
        ROUNDS_PLAYED+=1; // Increment rounds

        __ursa_log(message.as_ptr(), message.len()); // Log
    }

    return 0; // Return success
}