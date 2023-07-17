import Foundation

/*
 * Complete the 'beautifulTriplets' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER d
 *  2. INTEGER_ARRAY arr
 */

func beautifulTriplets(d: Int, arr: [Int]) -> Int {
    // Write your code here
    let a = arr
    var result = 0
    if a.count < 3 {
        return result
    }
    for i in 0...a.count-3{
        let iValue = a[i]
        for j in (i+1)...a.count-2{
            let jValue = a[j]
            let n = jValue - iValue
            if n != d{ continue }
            for k in (j+1)...a.count-1{
                let kValue = a[k]
                let q = kValue - jValue
                if q != d { continue }
                result += 1
            }
        }
    }
    return result
}
