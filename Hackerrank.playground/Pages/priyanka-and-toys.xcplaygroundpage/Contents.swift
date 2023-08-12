import Foundation

/*
 * Complete the 'toys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY w as parameter.
 */

func toys(w: [Int]) -> Int {
    // Write your code here
    var container = 1
    let w = w.sorted(by: <)
    var min = w.min()!
    for i in 0..<w.count{
        if w[i] != min{
            if w[i] - min > 4{
                container += 1
                min = w[i]
            }
        }
    }
    return container
}
