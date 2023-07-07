import Foundation

/*
 * Complete the 'pickingNumbers' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func pickingNumbers(a: [Int]) -> Int {
    var result: [Int] = []
    for index in a.indices {
        var numbers: [Int] = [a[index]]
        for secondIndex in a.indices {
            if index != secondIndex, abs(a[index] - a[secondIndex]) <= 1 {
                var numberFits = true
                for number in numbers {
                    if abs(number - a[secondIndex]) > 1 {
                        numberFits = false
                    }
                }
                if numberFits {
                    numbers.append(a[secondIndex])
                }
            }
        }
        result = numbers.count > result.count ? numbers : result
    }
    
    return result.count
}
