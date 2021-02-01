// 1065 - 한수

var count: Int = 0
var input = Int(readLine()!)!

if input < 100 {
    count = input
} else {
    count = 99
    var sub: Int = 0
    for i in (100...input) {
        sub = ( i / 100) - ((i%100)/10)
        
        if sub == ((i%100)/10) - (i % 10) {
            count += 1;
        }
    }
}

print(count)
