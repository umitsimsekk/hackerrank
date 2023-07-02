import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */
func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    var newGrades = [Int]()
    for grade in grades {
        if grade < 38{
            newGrades.append(grade)
        }else if let remain = grade % 5 as? Int{
            if remain > 2 {
                if remain == 3{
                    newGrades.append(grade + 2)
                }
                if remain == 4{
                    newGrades.append(grade + 1)
                }
            }else{
                newGrades.append(grade)
            }
        }else{
            newGrades.append(grade)
        }
        
    }
    return newGrades
}
gradingStudents(grades: [73,67,38,33]) // output = [75, 67, 40, 33]
