import Foundation

/*
 * Complete the 'findDigits' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func findDigits(n: Int) -> Int {
    // Write your code here
    var digitCount = 0
    var digits = [Int]()
    var num = n
    while(num != 0)
    {
        digits.append(num % 10)
        num /= 10;
    }
    for number in digits {
        if number != 0{
            if n % number == 0{
                digitCount += 1
            }
        }
    }
    return digitCount
}
