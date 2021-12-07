/*
문제
 흔한 수학 문제 중 하나는 주어진 점이 어느 사분면에 속하는지 알아내는 것이다.

 예를 들어, 좌표가 (12, 5)인 점 A는 x좌표와 y좌표가 모두 양수이므로 제1사분면에 속한다. 점 B는 x좌표가 음수이고 y좌표가 양수이므로 제2사분면에 속한다.

 점의 좌표를 입력받아 그 점이 어느 사분면에 속하는지 알아내는 프로그램을 작성하시오. 단, x좌표와 y좌표는 모두 양수나 음수라고 가정한다.
 
입력
 첫 줄에는 정수 x가 주어진다. (−1000 ≤ x ≤ 1000; x ≠ 0) 다음 줄에는 정수 y가 주어진다. (−1000 ≤ y ≤ 1000; y ≠ 0)
 
출력
 점 (x, y)의 사분면 번호(1, 2, 3, 4 중 하나)를 출력한다.
 
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

func output(quadrantCheck: Int) {
    print(quadrantCheck)
}

// controller -> 계산을 수행
func stringToInt(value: String) -> Int {
    guard let intValue = Int(value) else {
        return 0
    }
    return intValue
}

func quadrantCalcu(x: Int, y: Int) -> Int {
    if x > 0, y > 0 {
        return 1
    } else if x > 0, y < 0 {
        return 4
    } else if x < 0, y < 0 {
        return 3
    } else {
        return 2
    }
}

// Model -> 데이터를 저장
struct Model {
    let x: Int
    let y: Int
}

// View
let inputX = readNum()
let inputY = readNum()

// controller
let x = stringToInt(value: inputX)
let y = stringToInt(value: inputY)

// model
let quadrantModel = Model(x: x, y: y)

// controller
let quadrant = quadrantCalcu(x: quadrantModel.x, y: quadrantModel.y)

// View
output(quadrantCheck: quadrant)


