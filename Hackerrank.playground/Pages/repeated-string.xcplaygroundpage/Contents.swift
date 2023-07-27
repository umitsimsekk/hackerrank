import Foundation

/*
 * Complete the 'repeatedString' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. LONG_INTEGER n
 */

func repeatedString(s: String, n: Int) -> Int {
    // Write your code here
    var strArray = Array(s)
    var aCount = 0
    var count = 0
    
    let includeA = s.contains { $0 == "a" }
    if !includeA{
        return 0
    }
        
    for a in strArray{
        aCount = a == "a" ? aCount+1 : aCount
    }
    
    if s.count < n{
        var q = n / s.count
        var m = n % s.count
        var d = 0
        if m != 0{
            for j in 0...m-1{
                if strArray[j] == "a"{
                    d += 1
                }
            }
        }
        count = (q * aCount) + d
    }else{
        for j in 0...n{
            if strArray[j] == "a"{
                count += 1
            }
        }
    }
    return count
}
