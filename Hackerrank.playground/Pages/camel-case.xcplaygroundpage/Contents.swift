import Foundation

/*
 * Complete the 'camelcase' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING s as parameter.
 */
func isBigLetter(_ str : String) -> Bool {
    let alpabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    return alpabets.contains(str)
}
func camelcase(s: String) -> Int {
    // Write your code here
    var count = 1
    for i in s.indices{
        let str = String(s[i])
        count += isBigLetter(str) ? 0 : 1
    }
    
    return count
}
