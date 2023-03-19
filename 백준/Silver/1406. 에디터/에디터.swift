
import Foundation

//var strArr = readLine()!.map { String($0) }
//let n = Int(readLine()!)!
//var cnt = strArr.count
////print(strArr)
////print(cnt)
//
//for _ in 0..<n {
//    let a = readLine()!.split(separator: " ").map {String($0)}
//    
//    switch a[0] {
//    case "L":
//        L()
//    case "D":
//        D()
//    case "B":
//        B()
//    case "P":
//        P(a[1])
//    default:
//        break
//    }
//}
//print(strArr.joined(separator: ""))
//
////MARK: - 함수
//func L () {
//    if cnt != 0 {
//        cnt -= 1
//    }
//}
//func D () {
//    if cnt < strArr.count - 1 {
//        cnt += 1
//    }
//}
//func B () {
//    if cnt != 0 {
//        cnt -= 1
//        strArr.remove(at: cnt)
//        cnt += 1
//    }
// 
//}
//func P(_ x: String) {
////    cnt -= 1
//    strArr.insert(x, at: cnt)
//    cnt += 1
//
//}

//MARK: - 위에꺼 시간초과 떠서 다른 사람 어떻게 했는지 함 봤음.

var left = Array(readLine()!)
var right: [Character] = []
let n2 = Int(readLine()!)!

for _ in 0..<n2 {
    let edit = readLine()!
    switch edit {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D" :
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B" :
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(edit.last!)
    }
}

print(String(left+right.reversed()))
