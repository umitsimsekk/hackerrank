import Foundation

/*
 * Complete the 'kangaroo' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER x1
 *  2. INTEGER v1
 *  3. INTEGER x2
 *  4. INTEGER v2
 */

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var result = "NO"
    var x1 = x1 , x2 = x2
    for _ in 0...10000{
        x1 += v1
        x2 += v2
        if x1 == x2{
            result = "YES"
            break
        }
    }
    return result
}
