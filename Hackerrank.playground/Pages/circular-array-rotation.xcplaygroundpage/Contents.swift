import Foundation

/*
 * Complete the 'circularArrayRotation' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER k
 *  3. INTEGER_ARRAY queries
 */

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    // Write your code here
    var newArray = a
    var resultArray = [Int]()
    var limit = k > a.count ? k % a.count : k
    for _ in 0...limit-1{
        var temp = newArray[newArray.count-1]
        newArray.remove(at: newArray.count-1)
        newArray.insert(temp, at: 0)
    }
    for i in queries{
        resultArray.append(newArray[i])
    }
    return resultArray
}
