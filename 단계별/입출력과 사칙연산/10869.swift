/*
문제
 두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오.

출력
 두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)

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

func output(sumValue: Int, subValue: Int, mulValue: Int, divValue: Int, modValue: Int) {
    print(sumValue)
    print(subValue)
    print(mulValue)
    print(divValue)
    print(modValue)
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

func sum(first: Int, second: Int) -> Int {
    return first + second
}

func sub(first: Int, second: Int) -> Int {
    return first - second
}

func mul(first: Int, second: Int) -> Int {
    return first * second
}

func div(first: Int, second: Int) -> Int {
    return first / second
}

func mod(first: Int, second: Int) -> Int {
    return first % second
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
let resultSum = sum(first: numModel.first, second: numModel.second)
let resultSub = sub(first: numModel.first, second: numModel.second)
let resultMul = mul(first: numModel.first, second: numModel.second)
let resultDiv = div(first: numModel.first, second: numModel.second)
let resultMod = mod(first: numModel.first, second: numModel.second)


// View
output(sumValue: resultSum, subValue: resultSub, mulValue: resultMul, divValue: resultDiv, modValue: resultMod)

