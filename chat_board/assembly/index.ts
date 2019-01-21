const messages: string[] = ["Hello, world!"]; // Init message board

// post - post to message board
export function post(s: string): i32 {
  messages.push(s); // Add post

  return 0; // Success
}

// getMessages - messages getter
export function getMessages(): string[] {
  return messages; // Return message board
}
