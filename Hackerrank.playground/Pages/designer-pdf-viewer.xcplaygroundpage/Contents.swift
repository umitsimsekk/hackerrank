import Foundation

/*
 * Complete the 'designerPdfViewer' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY h
 *  2. STRING word
 */

func designerPdfViewer(h: [Int], word: String) -> Int {
   var a = [
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
    ]
    // Write your code here
    let wordsArray = Array(word)
    var indeces = [Int]()
    var heights = [Int]()
    
    for index in a.indices {
        for array in wordsArray {
            if a[index] == String(array){
                indeces.append(index)
            }
        }
    }
    for index in indeces{
        heights.append(h[index])
    }
    guard let maxHeight = heights.max() else {
        return 0
    }
    
    return word.count * maxHeight
}
