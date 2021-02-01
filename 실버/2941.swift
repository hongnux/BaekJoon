// 2941 - 크로아티아 알파벳
 /*
        크로아티아 알파벳 리스트
        { c= }
        { c- }
        { dz= }
        { d- }
        { lj }
        { nj }
        { s= }
        { z= }
 */
import Foundation
let croatiaList: Array<String> = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

var input = readLine()!

for i in 0..<croatiaList.count {
    input = input.replacingOccurrences(of: croatiaList[i], with: "*")
}

print(input.count)
