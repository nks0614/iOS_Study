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
//
//for i in 0...10 where i % 2 == 0 {
//    print(i)
//}
//
//let num = 10
//
//switch num {
//case 0:
//    print("0입니다.")
//case 0...10:
//    print("0에서 20 사이의 수") // 조건이 여러 개 맞아도 선행 조건을 실행후 종료
//case 10:
//    print("10입니다.")
//default:
//    print("다른 무언가")
//}

//let num = 5
//switch num {
//case _ where num % 2 == 0: // 이렇게 where로 조건을 추가할 수 있다.
//    print("짝수입니다.")
//default:
//    print("홀수입니다.")
//}
//
//let coord = (x: 0, y: 4)
//
//switch coord {
//case (0, 0):
//    print("0,0")
//case (let x, 0):
//    print("\(x)")
//case(0, let y):
//    print("\(y)")
//default:
//    print("어딘가에 있음")
//}

//func printName() {
//    print("My name is Hello")
//}
//
//printName()
//
//
//enum Word {
//    case steve(String, Int)
//    case bob(String)
//}
//
//let word = Word.steve("steve1", 1)

//switch word {
//case let .steve(nickName, id):
//    print(nickName)
//    print("id: \(id)")
//case let .bob(nickName):
//    print(nickName)
//}

//func word(_ type: Word) -> String {
//    switch type {
//    case .bob(let nickName):
//        return nickName
//    case let .steve(nickName, id):
//        return "\(nickName) \(id)"
//    }
//}
//
//print(word(word))

//func helloGenerator(_ message : String) -> (String) -> String {
//    func hello(_ name: String) -> String {
//        return name + message
//    }
//
//    return hello
//} // 함수 안에 함수 선언도 되고 반환도 됨.
//
//let hello = helloGenerator("님 안녕하세요!") // 이렇게 사용 가능함.
//hello("남규석")
//
//func helloGenerator2(_ message: String) -> (String, String) -> String {
//    return {  // 클로져 Closure. 중괄호로 감싸진 '실행 가능한 코드 블럭'
//        return $1 + $0 + message
//    }
//}

//let hello2: (String, String) -> String = { $1 + $0 + "님 안녕하세요!" }
//hello2("규석", "남")

// Closeure 활용하기
let arr1 = [1, 3, 5, 4, 8, 9]
let arr2 = arr1.map {$0 * 2}
print(arr2)
let sum = arr1.reduce(0) { $0 + $1 }
arr1.reduce(0, +) // 똑같은 방식 
print(sum)
