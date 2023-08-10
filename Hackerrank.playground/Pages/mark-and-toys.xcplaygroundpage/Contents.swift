import Foundation

/*
 * Complete the 'maximumToys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY prices
 *  2. INTEGER k
 */

func maximumToys(prices: [Int], k: Int) -> Int {
    // Write your code here
    var prices = prices.sorted(by: <)
    var res = k
    var count = 0
    for price in prices{
        if res - price >= 0 {
            res -= price
            count += 1
        }else {
            break
        }
    }
    return count
}
