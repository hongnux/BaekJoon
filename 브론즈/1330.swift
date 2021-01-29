// 1330 - 두 수 비교하기
import Foundation

let input = readLine()!
let inputArray = input.components(separatedBy: " ")

if Int(inputArray[0])! > Int(inputArray[1])! {
    print(">")
} else if (Int(inputArray[0])! < Int(inputArray[1])!){
    print("<")
} else {
    print("==")
}
