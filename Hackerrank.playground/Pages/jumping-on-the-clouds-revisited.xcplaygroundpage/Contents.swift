import Foundation

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int], k: Int) -> Int {
   var energy = 99
    
    var p = k
    
    if p == c.count{
        p = 0
    }else {
        while p > 0 {
            energy -= 1
            if c[p] == 1 {
                energy -= 2
            }
            p = p + k
            if p >= c.count {
                p = p-c.count
            }
        }
    }
    if c[p] == 1 {
        energy -= 2
    }
    return energy
}
