import Foundation

/*
 * Complete the 'maximizingXor' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER l
 *  2. INTEGER r
 */

func maximizingXor(l: Int, r: Int) -> Int {
    // Write your code here
    var ans = 0
    for i in l...r{
        for j in i...r{
           ans = max(ans, i^j)
        }
    }
    return ans
}
