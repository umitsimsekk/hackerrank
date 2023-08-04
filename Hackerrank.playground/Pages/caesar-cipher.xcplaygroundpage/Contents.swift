import Foundation

/*
 * Complete the 'caesarCipher' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. INTEGER k
 */
func getLowercaseIndice(_ str : String) -> Int{
    let lowercaseAlphabet = Array("abcdefghijklmnopqrstuvwxyz")
    for i in 0...lowercaseAlphabet.count-1{
        if str == String(lowercaseAlphabet[i]){
            return i
        }
    }
    return -1
}
func getUppercaseIndice(_ str : String) -> Int{
    let uppercasealphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    for i in 0...uppercasealphabet.count-1{
        if str == String(uppercasealphabet[i]){
            return i
        }
    }
    return -1
}
func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var rotatedAlphabet = ""
    var prefix = ""
    var suffix = ""
    for (key, value) in alphabet.enumerated(){
        if key < k % 26{
            prefix += String(value)
        }else{
            suffix += String(value)
        }
    }
    rotatedAlphabet = suffix + prefix
    let rotatedAlphabetArr = Array(rotatedAlphabet)
    
    var output = ""
    for (_, value) in s.enumerated(){
        let isLowercase  = getLowercaseIndice(String(value))
        let isUppercase  = getUppercaseIndice(String(value))
        if isLowercase != -1 {
            output += String(rotatedAlphabetArr[isLowercase])
        }else if isUppercase != -1 {
            output += String(rotatedAlphabetArr[isUppercase].uppercased())
        }else{
            output += String(value)
        }

    }
    
    return output
}
