import Foundation

/*
 * Complete the 'bonAppetit' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY bill
 *  2. INTEGER k
 *  3. INTEGER b
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    // Write your code here
    var totalAmount = 0
    var annaBill = 0
    let limit = bill.count-1
    
    
    for i in 0...limit{
        totalAmount += bill[i]
        if k != i{
            annaBill += bill[i]
        }
    }
    annaBill = annaBill/2
    
    if (annaBill - b == 0){
        print("Bon Appetit")
    }else{
        print(b-annaBill)
    }

}
