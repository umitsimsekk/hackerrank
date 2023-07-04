import Foundation

/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 */

func breakingRecords(scores: [Int]) -> [Int] {
    var maximum = scores[0]
    var minimum = scores[0]
    var minCount = 0
    var maxCount = 0
    
    var results = [Int]()
    
    for score in scores {
        if score > maximum {
            maximum = score
            maxCount += 1
        }
        if score < minimum{
            minimum = score
            minCount += 1
        }
    }
    results.append(maxCount)
    results.append(minCount)

    return results

}
