import Foundation

/*
 * Complete the 'nonDivisibleSubset' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY s
 */

func nonDivisibleSubset(k: Int, s: [Int]) -> Int {
    // Write your code here
   var subset: [Int] = []
    var remainers: [Int: Int] = [:]
    let temp: [Int] = s.map { $0 % k }
    temp.forEach { if let _ = remainers[$0] { remainers[$0]! += 1 } else { remainers[$0] = 1 } }
    
    for key in remainers.keys{
        if k % 2 == 0, key == k/2 {
            subset.append(key)
        } else if key == 0 {
            subset.append(key)
        } else if let remainer = remainers[k - key], !subset.contains(k - key){
            if remainer < remainers[key]!{
                for _ in 0..<remainers[key]!{
                    subset.append(key)
                }
            }
        } else if !subset.contains(k - key) {
            for _ in 0..<remainers[key]!{
                subset.append(key)
            }
        }
    }
    return subset.count
}
