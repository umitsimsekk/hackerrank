import Foundation

/*
 * Complete the 'hurdleRace' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY height
 */

func hurdleRace(k: Int, height: [Int]) -> Int {
    var newK = k
    
    for h in height{
        if newK - h < 0 {
            for _ in 0..<abs(newK-h){
                newK += 1
            }
        }
    }
    
    return newK-k
}
