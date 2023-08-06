import Foundation

/*
 * Complete the 'findMedian' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func findMedian(arr: [Int]) -> Int {
    // Write your code here
    var arr = arr.sorted(by: <)
    var median = 0
    for i in 0...arr.count-1{
        if i == arr.count/2{
            median = arr[i]
        }
    }
    
    return median
}
