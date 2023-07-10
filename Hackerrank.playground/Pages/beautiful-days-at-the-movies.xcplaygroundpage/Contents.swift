import Foundation

/*
 * Complete the 'beautifulDays' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER i
 *  2. INTEGER j
 *  3. INTEGER k
 */

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    // Write your code here
    var beautifulDays = 0
   
    for num in i...j{
        var reverseNum = reverseNumber(num)
        if (num - reverseNum) % k == 0{
            beautifulDays += 1
        }
    }
    return beautifulDays
}
func reverseNumber(_ number : Int) -> Int{
    var num = number
    var reversedNum = 0
    var remainNum = 0
    while (num > 0){
        remainNum = num % 10
        reversedNum = reversedNum * 10 + remainNum
        num = num / 10
    }
    return reversedNum
}

