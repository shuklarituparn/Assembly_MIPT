.global main

main:
    // Предполагается, что w1 и w2 уже содержат входные данные.

gcd_loop:
    cmp w2, #0          // Сравниваем w2 с нулем.
    beq end             // Если w2 равен нулю, выходим из цикла.

    // Вычисляем остаток от деления w1 на w2 и сохраняем его в w1.
    udiv w3, w1, w2     // w3 = w1 / w2 (целочисленное деление).
    msub w1, w3, w2, w1 // w1 = w1 - w3 * w2.

    // Меняем местами значения в w1 и w2.
    mov w3, w1
    mov w1, w2
    mov w2, w3

    b gcd_loop          // Переходим к следующей итерации цикла.

end:
    // w1 содержит НОД.
    ret                 // Возвращаем управление, результат в w1.
