import Foundation

/*
 * Complete the 'icecreamParlor' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER m
 *  2. INTEGER_ARRAY arr
 */

func icecreamParlor(m: Int, arr: [Int]) -> [Int] {
    // Write your code here
    var indices = [Int]()
    for i in 0...arr.count-1{
        if i != arr.count-1{
            for j in (i+1)...arr.count-1{
                if arr[i] + arr[j] == m{
                    indices.append(i + 1)
                    indices.append(j + 1)
                }
            }
        }
    }
    return indices
}
