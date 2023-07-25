import Foundation

/*
 * Complete the 'sockMerchant' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY ar
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var count = 0
    var array = ar
            
    repeat {
        let temp = array[0]
        array.remove(at: 0)
        for index in array.indices {
            if temp == array[index] {
                count += 1
                array.remove(at: index)
                break
            }
        }
    } while array.count > 1
    return count

}
