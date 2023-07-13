import Foundation

/*
 * Complete the 'appendAndDelete' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. STRING t
 *  3. INTEGER k
 */

func appendAndDelete(s: String, t: String, k: Int) -> String {
    // Write your code here
   var similatiry = 0

    for index in min(s, t).indices {
        if s[index] == t[index]{
            similatiry += 1
        } else { break }
    }
    
    let differenceTooBig = s.count + t.count - 2 * similatiry > k
    let differenceIsOk = (s.count + t.count - 2 * similatiry - k) % 2 == 0
    let fewOperationsLeft = s.count + t.count - k < 0
    
    return !differenceTooBig && differenceIsOk || fewOperationsLeft ? "Yes" : "No"
}
