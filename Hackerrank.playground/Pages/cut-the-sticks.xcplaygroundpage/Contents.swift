import Foundation

/*
 * Complete the 'cutTheSticks' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func cutTheSticks(arr: [Int]) -> [Int] {
    // Write your code here
    var a = arr
    var result = [Int]()
    var min = a.min()
    var count = a.count
    
    while count > 0 {
        if a.count == 1{
            count = 0
            result.append(1)
            break
        }
        for index in a.indices{
            let i = a[index]
            let n = i - min!
            if  n >= 0{
                a[index] = n
            }
        }
        result.append(a.count)
        a.removeAll {  $0 == 0 }
        count = a.count
        min = a.min()
    }

    return result

}
