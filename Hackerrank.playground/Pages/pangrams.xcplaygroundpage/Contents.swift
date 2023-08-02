import Foundation

/*
 * Complete the 'pangrams' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func pangrams(s: String) -> String {
    // Write your code here
    var str = s.filter({$0 != " "})
    var newStr = [String]()
    
    for (_,value) in str.enumerated(){
        if !newStr.contains(String(value).uppercased()) && !newStr.contains(String(value).lowercased()){
            newStr.append(String(value))
        }
    }
    return newStr.count == 26 ? "pangram" : "not pangram"
}
