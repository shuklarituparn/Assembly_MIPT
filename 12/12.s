CMP   w1, w2            //comparing w1 and w2
MOV   w3, wzr          //to make w3 zero
MOV   w4, #1         //to move 1 to w4
CSEL  w3, w4, w3, EQ  //if the EQ flag is true, it will move w4 to w3 setting it to 1


//(wzr — регистр, всегда содержащий 0)