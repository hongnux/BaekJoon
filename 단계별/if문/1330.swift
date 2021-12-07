/*
문제
 두 정수 A와 B가 주어졌을 때, A와 B를 비교하는 프로그램을 작성하시오.
입력
 첫째 줄에 A와 B가 주어진다. A와 B는 공백 한 칸으로 구분되어져 있다.
 
출력
 첫째 줄에 다음 세 가지 중 하나를 출력한다.

 A가 B보다 큰 경우에는 '>'를 출력한다.
 A가 B보다 작은 경우에는 '<'를 출력한다.
 A와 B가 같은 경우에는 '=='를 출력한다.

 */

import Foundation

// MVC 패턴으로 풀어보기

// View
func readNum() -> String {
    guard let value = readLine() else {
        return ""
    }
    return value
}

func output(oper: String) {
    print(oper)
}

// controller -> 계산을 수행
func stringToArr(value: String) -> [String] {
    return value.components(separatedBy: " ")
}

func stringToInt(value: String) -> Int {
    guard let intValue = Int(value) else {
        return 0
    }
    return intValue
}

func compare(first: Int, second: Int) -> String {
    var oper: String
    if first > second {
        oper = ">"
    } else if first < second {
        oper = "<"
    } else {
        oper = "=="
    }
    return oper
}

// Model -> 데이터를 저장
struct Model {
    let first: Int
    let second: Int
}

// View
let inputValue = readNum()

// controller
let numArr = stringToArr(value: inputValue)

let first = stringToInt(value: numArr[0])
let second = stringToInt(value: numArr[1])

// model
let numModel = Model(first: first, second: second)

// controller
let oper = compare(first: numModel.first, second: numModel.second)


// View
output(oper: oper)

