import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var maxNum = arr[0],maxIndex = 0
    var minNum = arr[0],minIndex = 0

    var maxSum = 0
    var minSum = 0

    for (i,num) in arr.enumerated() {
        if num > maxNum{
            maxNum = num
            maxIndex = i
        }
        if num < minNum{
            minNum = num
            minIndex = i
        }
    }
    var maxArray = arr
    maxArray.remove(at: minIndex)
    var minArray = arr
    minArray.remove(at: maxIndex)
    
    for i in maxArray{
        maxSum += i
    }
    for i in minArray{
        minSum += i
    }
    print(minSum,maxSum)

}
