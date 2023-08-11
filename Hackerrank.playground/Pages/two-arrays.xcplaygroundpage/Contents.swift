import Foundation

/*
 * Complete the 'twoArrays' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY A
 *  3. INTEGER_ARRAY B
 */

func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    // Write your code here
    let a = A.sorted(by: <)
    let b = B.sorted(by: >)
    
    var output = true
    for i in 0..<A.count{
        if a[i] + b[i] < k{
            output = false
            break
        }
    }
    return output ?  "YES" : "NO"
}
