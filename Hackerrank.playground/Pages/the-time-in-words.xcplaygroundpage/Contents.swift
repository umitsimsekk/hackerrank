import Foundation

/*
 * Complete the 'timeInWords' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER h
 *  2. INTEGER m
 */
func numberToWords(_ number : Int) -> String{
    var output = ""
    let numberToWordsDict = [
        1 : "one",
        2 : "two",
        3 : "three",
        4 : "four",
        5 : "five",
        6 : "six",
        7 : "seven",
        8 : "eight",
        9 : "nine",
        10 : "ten",
        11 : "eleven",
        12 : "twelve",
        13 : "thirteen",
        14 : "fourteen",
        15 : "fifteen",
        16 : "sixteen",
        17 : "seventeen",
        18 : "eighteen",
        19 : "nineteen",
        20 : "twenty",
        21 : "twenty one",
        22 : "twenty two",
        23 : "twenty three",
        24 : "twenty four",
        25 : "twenty five",
        26 : "twenty six",
        27 : "twenty seven",
        28 : "twenty eight",
        29 : "twenty nine",
        
    ]
    for (num,words) in numberToWordsDict{
        if num == number{
            output = words
        }
    }
    return output
}
func timeInWords(h: Int, m: Int) -> String {
    // Write your code here
    var corners = [00,15,30,45]
    var words = ""
    var minute = m < 10 ? "minute" : "minutes"
    if corners.contains(m){
        if m == corners[0]{
            words = "\(numberToWords(h)) o' clock"
        }else if m == corners[1]{
            words = "quarter past \(numberToWords(h))"
        }else if m == corners[2]{
            words = "half past \(numberToWords(h))"
        }else{
            words = "quarter to \(numberToWords(h+1))"
        }
    }else{
        if m < 30 {
            words = "\(numberToWords(m)) \(minute) past \(numberToWords(h))"
        }else{
            words = "\(numberToWords(60-m)) \(minute) to \(numberToWords(h+1))"
        }
    }
    return words
}
