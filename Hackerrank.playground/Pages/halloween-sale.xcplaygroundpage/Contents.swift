import Foundation

/*
 * Complete the 'howManyGames' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER p
 *  2. INTEGER d
 *  3. INTEGER m
 *  4. INTEGER s
 */

func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    // Return the number of games you can buy
    if s < p {
        return 0
    }
    var p = p
    var totalCost = p
    var buyGame = 1
    for _ in 0...10000{
        p -= d
        if p <= m {
            p = m
        }
        var t = totalCost + p
        if t <= s {
            totalCost += p
            buyGame += 1
        }else{
            break
        }
        
    }
    return buyGame
}
