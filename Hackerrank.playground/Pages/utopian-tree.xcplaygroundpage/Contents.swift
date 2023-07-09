import Foundation

/*
 * Complete the 'utopianTree' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func utopianTree(n: Int) -> Int {
    var output = 0
    for i in 0...n{
        output =  i % 2 == 0 ? output+1 : output*2
    }
    return output
}
