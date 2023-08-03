import Foundation

/*
 * Complete the 'funnyString' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */
func getAscii(_ str : String) -> Int {
    let ascii = [
        "a" : 97,"b" : 98,"c" : 99,"d" : 100,"e" : 101,"f" : 102,"g" : 103,"h" : 104,"i" : 105,"j" : 106,"k" : 107,"l" : 108,
        "m" : 109,"n" : 110,"o" : 111,"p" : 112,"q" : 113,"r" : 114,"s" : 115,"t" : 116,"u" : 117,"v" : 118,"w" : 119,"x" : 120,"y" : 121,"z" : 122
    ]
    for (letter,code) in ascii{
        if str == letter{
            return code
        }
    }
    return 0
}
func funnyString(s: String) -> String {
    // Write your code here
    var codes = [Int]()
    for (key,value) in s.enumerated(){
        codes.append(getAscii(String(value)))
    }
    var diff = [Int]()
    for i in 0..<codes.count-1{
        diff.append(abs(codes[i] - codes[i+1]))
    }
    return diff == diff.reversed() ? "Funny" : "Not Funny"
}
