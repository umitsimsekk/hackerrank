import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
 var positiveValues = 0.0 , negativeValues = 0.0 ,zeroValues = 0.0
    for num in arr{
        if num < 0{
            negativeValues += 1.0
        }else if num > 0{
            positiveValues += 1.0
        }else{
            zeroValues += 1.0
        }
    }
    var count = Double(arr.count)
    print(positiveValues/count)
    print(negativeValues/count)
    print(zeroValues/count)
}
