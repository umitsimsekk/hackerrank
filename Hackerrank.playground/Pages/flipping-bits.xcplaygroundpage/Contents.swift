import Foundation

/*
 * Complete the 'flippingBits' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts LONG_INTEGER n as parameter.
 */
func getReverse(_ str : String) -> String{
    var reverse = ""
    for (_, value) in str.enumerated(){
        reverse += String(value) == "0" ? "1" : "0"
    }
    return reverse
}
func pad(string : String, toSize: Int) -> String {
  var padded = string
  for _ in 0..<(toSize - string.count) {
    padded = "0" + padded
  }
    return padded
}
func flippingBits(n: Int) -> Int {
    // Write your code here
    let str = String(n,radix: 2)
    let pad = pad(string: str, toSize: 32)
    let reverse = getReverse(pad)
    guard let i = Int(reverse,radix: 2) else {
        return 0
    }
    
    return i
}
