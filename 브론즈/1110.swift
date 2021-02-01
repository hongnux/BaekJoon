// 1110 - 더하기 사이클

var input = Int(readLine()!)!
var pre = input
var sum = (input / 10) + (input % 10)
var a: Int = 0 ,b : Int = 0, count: Int = 1

while true {
    a = pre % 10
    b = sum % 10
    pre = (a * 10 ) + b
    sum = (pre / 10) + (pre % 10)
    if pre == input {
        break
    }
    count += 1
}

print(count)
