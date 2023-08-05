import Foundation

/*
 * Complete the 'closestNumbers' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func closestNumbers(arr: [Int]) -> [Int] {
    // Write your code here
    var minDiff = abs(arr[0] - arr[1])
    var ar = arr.sorted(by: <)
    
    for i in 0...ar.count-1{
        if i+1 < arr.count{
            let temp = abs(ar[i] - ar[i + 1])
            minDiff = min(minDiff, temp)
        }
    }
    var values = [Int]()
    for i in 0..<ar.count-1 {
        let stateDiff = abs(ar[i] - ar[i + 1])
        if minDiff == stateDiff {
            values.append(ar[i])
            values.append(ar[i+1])
        }
    }
    return values
}
