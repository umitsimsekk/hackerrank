import Foundation

/*
 * Complete the 'cavityMap' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts STRING_ARRAY grid as parameter.
 */


func changeWithX(_ index : [[Int]], _ grid : [String]) -> [String]{
    var g = grid
    for i in grid.indices{
        for indx in index{
            var currentIndex = indx[0]
            if i == currentIndex{
                var newStr = ""
                for (j,char) in g[i].enumerated(){
                    newStr += j == indx[1] ? "X" : String(char)
                }
                g[i] = newStr
            }
        }
    }
    return g
}
