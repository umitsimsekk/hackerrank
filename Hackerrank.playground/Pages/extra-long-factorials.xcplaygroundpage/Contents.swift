import Foundation

/*
 * Complete the 'extraLongFactorials' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func extraLongFactorials(n: Int) -> Void {
    // Write your code here
    var total = 1
    
    for i in (1...n).reversed(){
        total *= i
    }
    print(total)
}
