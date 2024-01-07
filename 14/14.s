// Assume input is in w1
// Factorial result will be in w2

// Initialize the result (w2) to 1, as factorial of 0 is 1
mov  w2, #1

// Check if the input (lower byte of w1) is zero or one
// If it's zero or one, then the factorial is already correctly set to 1, so return
cmp  w1, #1
b.le finish

// Initialize the counter (w3) with the input number (lower byte of w1)
ubfx w3, w1, #0, #8

// Loop to calculate factorial
loop:
    // Multiply w2 by w3 and store the result in w2
    mul  w2, w2, w3

    // Decrement the counter w3
    subs w3, w3, #1

    // Compare counter with 1
    cmp  w3, #1

    // If w3 is not 1, continue the loop
    b.ne loop

// Finish label for exiting the loop
finish:
    // The result is already in w2
    ret
