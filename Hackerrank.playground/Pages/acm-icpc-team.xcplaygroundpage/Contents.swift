import Foundation

/*
 * Complete the 'acmTeam' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts STRING_ARRAY topic as parameter.
 */

func acmTeam(topic: [String]) -> [Int] {
    // Write your code here
    var maxTopics = 0
    var arr = [Int]()
    for i in 0...topic.count-1{
        for j in i...topic.count-1{
            var count = 0

            if i != j{
                for k in 0...topic[0].count-1{
                    let iIndex = topic[i].index(topic[i].startIndex, offsetBy: k)
                    let jIndex = topic[j].index(topic[j].startIndex, offsetBy: k)
                    if topic[i][iIndex] == "1" || topic[j][jIndex] == "1"{
                        count += 1
                    }

                }
                arr.append(count)
            }
            
        }
    }
    var maxValue = arr.max()!
    var maxValueCount = 0
    for value in arr{
        maxValueCount += value == maxValue ? 1 : 0
    }
    return [maxValue,maxValueCount]
}
