import Foundation

/*
 * Complete the 'marcsCakewalk' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts INTEGER_ARRAY calorie as parameter.
 */
func getPow(_ num : Int , _ i : Int) -> Int{
    var n = 1
    for _ in 0..<i{
        n *= num
    }
    
    return n
}
func marcsCakewalk(calorie: [Int]) -> Int {
    // Write your code here
    var cal = calorie.sorted(by: >)
    var miles = 0
    
    for i in 0..<cal.count{
        miles += getPow(2, i) * cal[i]
    }
    
    return miles
}
