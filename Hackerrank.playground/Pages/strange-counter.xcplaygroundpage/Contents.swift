import Foundation

/*
 * Complete the 'strangeCounter' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts LONG_INTEGER t as parameter.
 */

func strangeCounter(t: Int) -> Int {
    var end = 3
    var size = 3
    while end < t{
        size *= 2
        end += size
    }
    return end-t+1
}
