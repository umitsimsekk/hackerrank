import Foundation

/*
 * Complete the 'saveThePrisoner' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER m
 *  3. INTEGER s
 */

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
     return (m + s - 1) % n == 0 ? n : (m + s - 1) % n

}
