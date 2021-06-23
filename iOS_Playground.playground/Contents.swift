import UIKit
import Foundation

//var greeting = "Hello, playground"
//
//let randomNum = arc4random_uniform(100)
//
//let coordinates = (4, 6) // tuple, multi type
//
//let x = coordinates.0 // 4
//let y = coordinates.1 // 6
//
//let coordinates2 = (x: 5, y: 7) // parameter give name
//
//let x2 = coordinates2.x
//let y2 = coordinates2.y
//
//let (x3, y3) = coordinates2
//x3
//y3
//
//let yes = true
//let no = false
//
//let isBig = 4 > 5
//
//if isBig {
//    print("크다")
//} else {
//    print("작다")
//}
//
//let name1 = "Tom"
//let name2 = "Andy"
//
//let isSameName = (name1 == name2)


//var n = 0
//print("While")
//while(n < 5) { // 조건 검사 후 코드 수행
//    print(n)
//
//    if n == 3 {
//        break
//    }
//    n += 1
//}
//
//print("Repeat")
//n = 0
//
//repeat { // 코드 수행 후 조건 검사
//    print(n)
//    n += 1
//} while n < 5
//
//let range = 0...10 // 0에서 10
//let range2 = 0..<10 // 0에서 9
//
//var sum = 0
//for i in range {
//    sum += i
//}
//
//print(sum)
//
//var signValue : CGFloat = 0
//for i in range {
//    signValue = sin(CGFloat.pi / 4 * CGFloat(i))
//}

for i in 0...10 where i % 2 == 0 {
    print(i)
}

