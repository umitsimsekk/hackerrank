import Foundation

/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    var max = candles[0]
    var maxSum = 0
    for candle in candles {
        if candle > max{
            max = candle
        }
    }
    
    for candle in candles {
        if candle == max{
            maxSum += 1
        }
    }
    return maxSum
}
