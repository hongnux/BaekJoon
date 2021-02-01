// 2154 - 수 이어 쓰기
import Foundation
let input = Int(readLine()!)!
var i: Int = 1
var array: String = ""

while i <= input {
    array += String(i)
    i += 1
}

print(array.distance(from: array.startIndex, to: array.range(of: "\(input)")!.lowerBound) + 1)
