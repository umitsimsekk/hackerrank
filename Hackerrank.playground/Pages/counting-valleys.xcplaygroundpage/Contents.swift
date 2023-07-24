import Foundation

/*
 * Complete the 'countingValleys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER steps
 *  2. STRING path
 */

func countingValleys(steps: Int, path: String) -> Int {
 var p = [String]()
    
    for str in path{
        p.append(String(str))
    }
    var isSeaLevel = [0,0]
    
    for i in 0...p.count-1{
        if p[i] == "D"{
            isSeaLevel[0] += 1
        }
        if p[i] == "U"{
            isSeaLevel[1] += 1
        }
    }
    var seaLevel = 0
    var valleyLevel = 0
    if isSeaLevel.first == isSeaLevel.last{
        
        for i in 0...p.count-1{
            if p[i] == "U"{
                seaLevel += 1
            }
            if p[i] == "D"{
                seaLevel -= 1
                if seaLevel == -1{
                    valleyLevel += 1
                }
            }
        }
        
    }
    
    return valleyLevel
}
