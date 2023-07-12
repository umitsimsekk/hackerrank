import Foundation

/*
 * Complete the 'permutationEquation' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY p as parameter.
 */

func permutationEquation(p: [Int]) -> [Int] {
    var output = [Int]()
    for i in 1...(p.count){
        for j in 0...(p.count-1){
            if i == p[j]{
                for (index,k) in p.enumerated(){
                    if (j+1) == k{
                        output.append(index+1)
                    }
                }
                
             }
        }
    }
    
    return output
}
