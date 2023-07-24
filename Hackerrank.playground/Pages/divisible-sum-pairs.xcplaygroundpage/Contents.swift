import Foundation

/*
 * Complete the 'divisibleSumPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY ar
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var counter = 0
    for i in 0..<n-1 {
        for j in i+1..<n {
            guard (ar[i] + ar[j]) % k == 0 else { continue }
            counter += 1
        }
    }
    return counter
}
