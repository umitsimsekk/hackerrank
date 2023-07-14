import Foundation

/*
 * Complete the 'libraryFine' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER d1
 *  2. INTEGER m1
 *  3. INTEGER y1
 *  4. INTEGER d2
 *  5. INTEGER m2
 *  6. INTEGER y2
 */

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    // Write your code here
    var output = 0
    if y1 == y2{
        if m1 == m2{
            output = d1 > d2 ? (d1-d2) * 15 : 0
        }else{
            output = m1 > m2 ? (m1-m2) * 500 : 0
        }
    }else{
        output = y1 > y2 ? 10000 : 0
    }
    return output
}
