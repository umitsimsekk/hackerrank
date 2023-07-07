import Foundation

// Complete the catAndMouse function below.
func catAndMouse(x: Int, y: Int, z: Int) -> String {
    var catA = x-z > 0 ? x-z : z-x
    var catB = y-z > 0 ? y-z : z-y
    
    if catA < catB{
        return "Cat A"
    }else if catA > catB{
        return "Cat B"
    }else{
        return "Mouse C"
    }
}

