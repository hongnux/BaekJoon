/*
문제
 (A+B)%C는 ((A%C) + (B%C))%C 와 같을까?

 (A×B)%C는 ((A%C) × (B%C))%C 와 같을까?

 세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.

입력
 첫째 줄에 A, B, C가 순서대로 주어진다. (2 ≤ A, B, C ≤ 10000)
 
출력
 첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.

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

func output(modOne: Int, modTwo: Int, modThree: Int, modfour: Int) {
    print(modOne)
    print(modTwo)
    print(modThree)
    print(modfour)
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

func mod1(first: Int, second: Int, third: Int) -> Int {
    return (first + second)%third
}

func mod2(first: Int, second: Int, third: Int) -> Int {
    return ((first%third) + (second%third))%third
}

func mod3(first: Int, second: Int, third: Int) -> Int {
    return (first*second)%third
}

func mod4(first: Int, second: Int, third: Int) -> Int {
    return ((first%third) * (second%third))%third
}

// Model -> 데이터를 저장
struct Model {
    let first: Int
    let second: Int
    let third: Int
}

// View
let inputValue = readNum()

// controller
let numArr = stringToArr(value: inputValue)
let first = stringToInt(value: numArr[0])
let second = stringToInt(value: numArr[1])
let third = stringToInt(value: numArr[2])

// model
let numModel = Model(first: first, second: second, third: third)

// controller
let resultOne = mod1(first: numModel.first, second: numModel.second, third: numModel.third)
let resultTwo = mod2(first: numModel.first, second: numModel.second,third: numModel.third)
let resultThree = mod3(first: numModel.first, second: numModel.second,third: numModel.third)
let resultFour = mod4(first: numModel.first, second: numModel.second,third: numModel.third)


// View
output(modOne: resultOne, modTwo: resultTwo, modThree: resultThree, modfour: resultFour)

