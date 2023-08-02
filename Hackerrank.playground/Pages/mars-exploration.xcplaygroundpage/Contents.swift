import Foundation

/*
 * Complete the 'marsExploration' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING s as parameter.
 */

func marsExploration(s: String) -> Int {
    // Write your code here
    var expectedSignal = ""
    var difference = 0
    for _ in 1...s.count / 3{
        expectedSignal += "SOS"
    }
    
    for (i,iValue) in s.enumerated(){
        for (j,jValue) in expectedSignal.enumerated(){
            difference += i == j && iValue != jValue ? 1 : 0
        }
    }
    
    return difference
}
