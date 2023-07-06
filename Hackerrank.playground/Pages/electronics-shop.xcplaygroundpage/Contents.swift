import Foundation

/*
 * Complete the getMoneySpent function below.
 */

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var result = 0
    if keyboards.sorted()[0] + drives.sorted()[0] > b { return -1 }
    for item in keyboards {
        for otherItem in drives {
            let price = item + otherItem
            result = (price <= b && price > result) ? price : result
        }
    }
    return result
    
}
