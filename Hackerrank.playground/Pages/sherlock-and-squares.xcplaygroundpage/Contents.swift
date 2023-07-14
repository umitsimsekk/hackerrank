import Foundation

/*
 * Complete the 'squares' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER a
 *  2. INTEGER b
 */

func squares(a: Int, b: Int) -> Int {
    // Write your code here
    var square = 0
    var s = Int(sqrt(Double(a)))
    var s2 = s * s
    
    while s2 <= b{
        if s2 >= a {
            square += 1
        }
        s += 1
        s2 = s * s
    }
    return square
}
