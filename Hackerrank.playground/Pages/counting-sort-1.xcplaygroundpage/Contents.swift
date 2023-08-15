import Foundation

/*
 * Complete the 'countingSort' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func countingSort(arr: [Int]) -> [Int] {
    // Write your code here
    var result = [Int]()
    for _ in 0..<100{
        result.append(0)
    }
    
    for num in arr{
        result[num] += 1
    }
    return result
}
