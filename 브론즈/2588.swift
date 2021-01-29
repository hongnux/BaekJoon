// 2588 - 곱셈
let first = Int(readLine()!)!
let second = readLine()!

for section in second.reversed() {
    print(first * Int(String(section))!)
}

print(first * Int(second)!)
