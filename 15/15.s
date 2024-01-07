// Assume input is in w1
// Factorial result will be in w2

// Initialize the result (w2) to 1, as factorial of 0 is 1
mov  x2, #1

// Check if the input (lower byte of w1) is zero or one
// If it's zero or one, then the factorial is already correctly set to 1, so return
cmp  x1, #1
b.le finish

// Initialize the counter (w3) with the input number (lower byte of w1)
ubfx x3, x1, #0, #8

// Loop to calculate factorial
loop:
    // Multiply w2 by w3 and store the result in w2
    mul  x2, x2, x3

    // Decrement the counter w3
    subs x3, x3, #1

    // Compare counter with 1
    cmp  x3, #1

    // If w3 is not 1, continue the loop
    b.ne loop

// Finish label for exiting the loop
finish:
    // The result is already in w2
    ret
