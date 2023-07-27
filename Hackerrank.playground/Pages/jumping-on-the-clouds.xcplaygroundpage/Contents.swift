import Foundation

/*
 * Complete the 'jumpingOnClouds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY c as parameter.
 */

func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
    var i = 0
    var count = 0
    while i < c.count {
        
        if  i+2 < c.count && c[i+2] == c[i] {
            i += 2
            count += 1
        } else if i+1 < c.count && c[i+1] == c[i]{
            i += 1
            count += 1
        } else {
            break;
        }
    }
    return count
}
