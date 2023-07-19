import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftDiagonal = 0
    var rightDiagonal = 0
    for i in 0...arr.count-1{
        for j in 0...arr[i].count-1{
            if i == j{
                rightDiagonal += arr[i][j]
            }
            if ((i + j) == arr[i].count-1){
                leftDiagonal += arr[i][j]
            }
        }
    }
    var difference = leftDiagonal - rightDiagonal
    if difference < 0 {
        return difference * (-1)
    }else{
        return difference
    }
}
