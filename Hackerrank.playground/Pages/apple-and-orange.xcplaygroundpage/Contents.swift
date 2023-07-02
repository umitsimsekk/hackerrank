import Foundation

/*
 * Complete the 'countApplesAndOranges' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER s
 *  2. INTEGER t
 *  3. INTEGER a
 *  4. INTEGER b
 *  5. INTEGER_ARRAY apples
 *  6. INTEGER_ARRAY oranges
 */

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    // Write your code here
    var appleCount = 0
    var orangeCount = 0
    
    for apple in apples{
        if ( apple + a ) >= s && ( apple + a ) <= t {
            appleCount += 1
        }
    }
    for orange in oranges {
        if ( orange + b )  >= s && ( orange + b )  <= t {
            orangeCount += 1
        }
    }
    print(appleCount)
    print(orangeCount)

}
countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5,-6])
// output:
// 1
// 1
