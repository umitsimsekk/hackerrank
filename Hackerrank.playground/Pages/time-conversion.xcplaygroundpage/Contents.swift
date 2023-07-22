
import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
        guard let hh = Int(s.prefix(2)) else { fatalError("Bad input") }

        var time = String(s.dropLast(2))

        if s.hasSuffix("PM"), hh < 12 {
            time = String(time.dropFirst(2))
            time = "\(hh+12)\(time)"
        } else if s.hasSuffix("AM"), hh == 12 {
            time = String(time.dropFirst(2))
            time = "00\(time)"
        }

        return time
    

}
