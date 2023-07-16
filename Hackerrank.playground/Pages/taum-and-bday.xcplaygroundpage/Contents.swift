import Foundation

/*
 * Complete the 'taumBday' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER b
 *  2. INTEGER w
 *  3. INTEGER bc
 *  4. INTEGER wc
 *  5. INTEGER z
 */

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    // Write your code here
    let case1  = ( b * bc ) + ( w * wc )
    let case2  = ( b * z ) + (( b + w ) * wc)
    let case3  = ( w * z) + (( b + w ) * bc )
    return min(case1, min(case2, case3))
}
