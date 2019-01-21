extern "C" {
    fn __ursa_log(msg: *const u8, len: usize); // Get vm-provided log method
}

#[no_mangle]
pub extern "C" fn hello_world() -> i32 {
    let message = "Hello, world!".as_bytes(); // Init message

    unsafe {
        __ursa_log(message.as_ptr(), message.len()); // Log
    }

    return 0; // Return success
}