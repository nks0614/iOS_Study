import UIKit

var greeting = "Hello, playground"

let randomNum = arc4random_uniform(100)

let coordinates = (4, 6) // tuple, multi type

let x = coordinates.0 // 4
let y = coordinates.1 // 6

let coordinates2 = (x: 5, y: 7) // parameter give name

let x2 = coordinates2.x
let y2 = coordinates2.y

let (x3, y3) = coordinates2
x3
y3
