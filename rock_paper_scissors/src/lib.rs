extern "C" {
    fn __ursa_log(msg: *const u8, len: usize); // Get vm-provided log method
}

static mut LAST_MOVE: i32 = 10; // Init last move

#[no_mangle]
pub extern "C" fn send_move(move_num: i32) -> i32 {
    let moves = ["rock", "paper", "scissors"]; // Init moves
    let mut message = String::new(); // Init message buffer
    message.push_str("Placed move: "); // Push prefix
    message.push_str(moves[move_num as usize]); // Push move

    unsafe {
        if LAST_MOVE == 10 { // Check is starting game
            LAST_MOVE = move_num; // Set move
        }   
    }

    unsafe {
        __ursa_log(message.as_bytes().as_ptr(), message.len()); // Log
    }

    return 0; // Return success
}