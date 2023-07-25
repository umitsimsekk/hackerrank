import Foundation

/*
 * Complete the 'climbingLeaderboard' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY ranked
 *  2. INTEGER_ARRAY player
 */

func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var ranking: [Int] = []
    
    for score in ranked{
        if ranking.isEmpty {
            ranking.append(score)
        } else if ranking[ranking.endIndex - 1] > score{
            ranking.append(score)
        }
    }
    var result = [Int]()
    for item in player{
        while !ranking.isEmpty && ranking[ranking.count - 1] <= item {
            ranking.removeLast()
        }
        result.append(ranking.count+1)
    }
    return result
}
