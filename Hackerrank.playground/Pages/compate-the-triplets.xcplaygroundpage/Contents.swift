import Foundation

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var alicePoint = 0, bobPoint = 0
    for i in 0...2{
        if a[i] > b [i]{
            alicePoint += 1
        }
        if a[i] < b [i]{
            bobPoint += 1
        }
    }
    var matchPoints = [Int]()
    matchPoints.append(alicePoint)
    matchPoints.append(bobPoint)
    return matchPoints

}
