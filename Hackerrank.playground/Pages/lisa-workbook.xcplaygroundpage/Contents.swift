import Foundation

/*
 * Complete the 'workbook' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY arr
 */

func workbook(n: Int, k: Int, arr: [Int]) -> Int {
    // Write your code here
    var page = 1
    var special = 0
    for index in arr.indices{
        var count = 0
        for i in 1...arr[index]{
            if count == k{
                count = 1
                page += 1
            }else{
                count += 1
            }
            if page == i{
                special += 1
            }
        }
        page += 1
    }
    
    return special

}
