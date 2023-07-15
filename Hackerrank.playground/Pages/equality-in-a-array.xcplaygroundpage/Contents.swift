import Foundation

/*
 * Complete the 'equalizeArray' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func equalizeArray(arr: [Int]) -> Int {
    // Write your code here
    var cost = 0
    var numbers: [Int:Int] = [:]
    var mostPopularItem = (0, 0)

    for item in arr {
        if let number = numbers[item]{
            numbers[item] = number + 1
        } else {
            numbers[item] = 1
        }
    }

    for key in numbers.keys {
        mostPopularItem = mostPopularItem.1 < numbers[key]! ? (key, numbers[key]!) : mostPopularItem
    }

    for key in numbers.keys {
        cost += mostPopularItem.0 != key ? numbers[key]! : 0
    }

    return cost
}
