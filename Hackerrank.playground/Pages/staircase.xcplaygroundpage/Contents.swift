import Foundation

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func staircase(n: Int) -> Void {
    // Write your code here
    let limit = n-1
    for i in 0...limit{
        for j in 0...limit{
            if (i+j) < limit{
                print(" ",terminator: "")
            }else if (i+j) >= limit {
                print("#",terminator: "")
            }
        }
        print("")
    }

}
