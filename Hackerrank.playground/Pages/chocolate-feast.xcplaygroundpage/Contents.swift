import Foundation

/*
 * Complete the 'chocolateFeast' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER c
 *  3. INTEGER m
 */

func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    // Write your code here
    var wrappers = n / c
    var count = n / c
    while wrappers >= m {
       count += wrappers / m
       wrappers = ( wrappers % m) + ( wrappers / m )
    }
    return count
}
