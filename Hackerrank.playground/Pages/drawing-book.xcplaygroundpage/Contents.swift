import Foundation

/*
 * Complete the 'pageCount' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER p
 */

func pageCount(n: Int, p: Int) -> Int {
    var result = 0
    if p > n/2 {
        result = n % 2 == 0 ? (n - p + 1) / 2 : (n - p) / 2
    } else {
        result = p / 2
    }
    return result
}
