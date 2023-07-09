import Foundation

/*
 * Complete the 'angryProfessor' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY a
 */

func angryProfessor(k: Int, a: [Int]) -> String {
    let lateStudents = a.filter{ $0 <= 0 }
    
    if lateStudents.count >= k {
        return "NO"
    }else {
        return "YES"
    }
    
}
