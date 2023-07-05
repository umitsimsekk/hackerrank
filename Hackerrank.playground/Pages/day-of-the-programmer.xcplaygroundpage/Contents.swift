import Foundation

/*
 * Complete the 'dayOfProgrammer' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER year as parameter.
 */

func dayOfProgrammer(year: Int) -> String {
    var monts = [("01", 31), ("02", 28), ("03", 31), ("04", 30), ("05", 31),("06", 30),
               ("07", 31), ("08", 31), ("09", 30), ("10", 31), ("11", 30), ("12", 31)]
    
    if year < 1917{
        monts[1] = year % 4 == 0 ? ("02", 29) : ("02", 28)
        
    }
    if year == 1918{
        monts[1] = ("02",15)
        
    }
    if year > 1918{
        if year % 400 == 0 || year % 4 == 0 && year % 100 != 0{
            monts[1] = ("02",29)
        }else{
            monts[1] = ("02",28)
        }
    }
    var days = 0
    for (key,value) in monts{
        if days + value < 256 {
            days += value
        }else{
            return "\(256-days).\(key).\(year)"
        }
    }
   return "nil"

}
