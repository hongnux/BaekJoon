/*
문제
 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
입력
 첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.
 
출력
 시험 성적을 출력한다.

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

func output(grade: String) {
    print(grade)
}

// controller -> 계산을 수행
func stringToInt(value: String) -> Int {
    guard let intValue = Int(value) else {
        return 0
    }
    return intValue
}

func checkGrade(score: Int) -> String {
    switch score {
    case 90...:
        return "A"
    case 80...:
        return "B"
    case 70...:
        return "C"
    case 60...:
        return "D"
    default:
        return "F"
    }
}

// Model -> 데이터를 저장
struct Model {
    let score: Int
}

// View
let inputValue = readNum()

// controller
let score = stringToInt(value: inputValue)

// model
let numModel = Model(score: score)

// controller
let grade = checkGrade(score: numModel.score)

// View
output(grade: grade)

