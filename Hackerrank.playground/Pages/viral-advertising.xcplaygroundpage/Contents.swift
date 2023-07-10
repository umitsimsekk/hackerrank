import Foundation

/*
 * Complete the 'viralAdvertising' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func viralAdvertising(n: Int) -> Int {
    var output = 0
    var sharedPeople = 5
    for _ in 0...n-1{
        var likedAdv = sharedPeople / 2
        output += likedAdv
        sharedPeople = 3 * likedAdv
    }
    return output
}
