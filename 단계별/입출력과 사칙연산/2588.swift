/*
문제
 (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
 
                                                4 7 2 - - - - - (1)
                                            x   3 8 5 - - - - - (2)
                                        -------------
                                              2 3 6 0 - - - - - (3)
                                            3 7 7 6   - - - - - (4)
                                          1 4 1 6     - - - - - (5)
                                        -------------
                                          1 8 1 7 2 0 - - - - - (6)


 (1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.
입력
 첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.
 
출력
 첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.

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

func output(valueOne: Int, valueTwo: Int, valueThree: Int, valueMul: Int ) {
    print(valueOne)
    print(valueTwo)
    print(valueThree)
    print(valueMul)
}

// controller -> 계산을 수행
func stringToInt(value: String) -> Int {
    guard let intValue = Int(value) else {
        return 0
    }
    return intValue
}

func mulOne(first: Int, second: Int) -> Int {
    return (first * (second % 10))
}

func mulTwo(first: Int, second: Int) -> Int {
    return (first * ((second % 100) / 10))
}

func mulThree(first: Int, second: Int) -> Int {
    return (first * ( second / 100 ) )
}

func mul(first: Int, second: Int) -> Int {
    return first * second
}

// Model -> 데이터를 저장
struct Model {
    let first: Int
    let second: Int
}

// View
let inputValue1 = readNum()
let inputValue2 = readNum()

// controller
let firstNum = stringToInt(value: inputValue1)
let secondNum = stringToInt(value: inputValue2)

// model
let numModel = Model(first: firstNum, second: secondNum)

// controller
let valueOne = mulOne(first: numModel.first, second: numModel.second)
let valueTwo = mulTwo(first: numModel.first, second: numModel.second)
let valueThree = mulThree(first: numModel.first, second: numModel.second)
let valueMul = mul(first: numModel.first, second: numModel.second)


// View
output(valueOne: valueOne, valueTwo: valueTwo, valueThree: valueThree, valueMul: valueMul)

