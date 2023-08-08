import Foundation

/*
 * Complete the 'lonelyinteger' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    var dict = [Int: Int]()
    
    for val in a{
        if dict.keys.contains(val){
            dict[val]! += 1
        }else{
            dict[val] = 1
        }
    }
    var output = 0
    for (key, value) in dict{
        if value != 2{
            output = key
        }
    }
    return output != 0 ? output : 0
}
