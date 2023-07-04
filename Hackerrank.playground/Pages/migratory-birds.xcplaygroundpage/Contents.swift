import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr: [Int]) -> Int {
    var counts = [0,0,0,0,0,0]
    var maxIndex = 0
    var max = 0
    
    for i in arr{
        counts[i] += 1
    }
    
    for (i,count) in counts.enumerated(){
        if count > max {
            max = count
            maxIndex = i
        }
    }
    return maxIndex
}
