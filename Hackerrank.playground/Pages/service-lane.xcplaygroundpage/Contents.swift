import Foundation

/*
 * Complete the 'serviceLane' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. 2D_INTEGER_ARRAY cases
 */

func serviceLane(n: Int, cases: [[Int]]) -> [Int] {
    // Write your code here
    var results = [Int]()
    for arr in cases{
        var temp = [Int]()
        for i in arr[0]...arr[1]{
            temp.append(width[i])
        }
        results.append(temp.min()!)
    }
    return results
}
