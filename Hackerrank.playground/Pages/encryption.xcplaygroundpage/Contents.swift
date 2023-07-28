
import Foundation

/*
 * Complete the 'encryption' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func encryption(s: String) -> String {
    // Write your code here
    let newString = s.filter({$0 != " "})
    let min = Int(sqrt(Double(newString.count)))
    var count = 1
    
    var o = ""
    for char in newString{
        let limit = min * min == newString.count ? min : min + 1
        var str = ""
        if count < limit{
            str += String(char)
            count += 1
        }else{
            count = 1
            str += String(char)
            str += " "
        }
        o += str
    }
    
    let outputArr = o.split(separator: " ")
    var output = ""
    
    
    for i in 0...outputArr[0].count-1{
        for str in outputArr{
            for (j,q) in str.enumerated(){
                if i == j{
                    output += String(q)
                }
            }
        }
        if i != outputArr[0].count-1{
            output += " "
        }
    }
    return output
}
