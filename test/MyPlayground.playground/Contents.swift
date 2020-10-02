import UIKit

// 162. Closure
//func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
//    return operation(n1,   n2)
//}
//
//let result = calculator(n1: 1, n2: 2) {$0 * $1}
//print(result)


//let array = [6,2,3,9,4,1]
//
////func addOne(no1: Int) -> Int {
////    return no1 + 1
////}
//
//
//let newArray = array.map{"\($0+1)"}
//print(newArray)

// 169.

//extension Double{
//    func round(to places: Int) -> Double{
//        let precisionNumber = pow(10, Double(places))
//        var n = self
//        n = n * precisionNumber
//        n.round()
//        n = n / precisionNumber
//        return n
//    }
//}
//var myDouble = 3.14599
//myDouble.round(to: 1)



extension UIButton{
    func makeCircular(){
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.makeCircular()
