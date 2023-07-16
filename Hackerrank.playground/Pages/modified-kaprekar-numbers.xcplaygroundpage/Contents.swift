import Foundation

/*
 * Complete the 'kaprekarNumbers' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER p
 *  2. INTEGER q
 */



func square(_ num : Int) -> Int {
    return num * num
}
func divide(_ num : Int) -> [Int] {
    var result = [Int]()
    var arr = Array(String(num))
    var str = ""
    for i in 0...(arr.count/2)-1{
        str += String(arr[i])
    }
    var k = Int(str)!
    result.append(k)
    str = ""
    for i in arr.count/2...(arr.count)-1{
        str += String(arr[i])
    }
    var q = Int(str)!
    result.append(q)

    return result
}

func kaprekarNumbers(p: Int, q: Int) -> Void {
    // Write your code here
    var count = 0
    for i in p...q{
        var sqr = square(i)
        if sqr < 10 {
            if sqr == i {
                print(i,terminator: " ")
            }
        }else{
            var num = divide(square(i))
            var result = 0
            for n in num{
                result += n
            }
            if result == i{
                print(i,terminator: " ")
                count += 1

            }
        }
    }
    if count == 0{
        print("INVALID RANGE")
    }
}
