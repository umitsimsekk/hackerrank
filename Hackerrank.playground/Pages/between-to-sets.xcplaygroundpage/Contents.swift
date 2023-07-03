import Foundation

/*
 * Complete the 'getTotalX' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func getTotalX(a: [Int], b: [Int]) -> Int {
    // Write your code here
   var numbers = 0
    
    for i in 1...1000{
        var isDividedAnum = false
        
        for j in a{
            if i % j > 0 {
                isDividedAnum = true
                break
            }
        }
        if isDividedAnum{
            continue
        }
        
        for k in b{
            if k % i > 0 {
                isDividedAnum = true
                break
            }
        }
        if isDividedAnum{
            continue
        }
        numbers += 1

    }
    
    return numbers

}
