import Foundation

/*
 * Complete the 'minimumDistances' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func minimumDistances(a: [Int]) -> Int {
    // Write your code here
    var indices = [Int]()
    
    for i in a.indices{
        for j in a.indices{
            if i != j {
                if a[i] == a[j]{
                    indices.append(abs(i-j))
                }
            }
        }
    }
    return indices.count == 0 ? -1 : indices.min()!
}
