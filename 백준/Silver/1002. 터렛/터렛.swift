import Foundation
//     이거 왜 틀린건데요 선생님
//let n = Int(readLine()!)!
//
//for _ in 1...n {
//    var coord = Array(readLine()!).split(separator: " ").map{ Int(String($0))!}
//    var distance = Int(sqrt(pow(Double(coord[3]-coord[0]),2) + pow(Double(coord[4]-coord[1]),2)))
////    print("r1=\(coord[2]), r2=\(coord[5]), dis=\(distance)")
//    var r1 = coord[2]
//    var r2 = coord[5]
//
//        if r1 == r2 && distance == 0 {
//            print(-1)
//        } else if r1 + r2 < distance || abs(r2 - r1) > distance || distance == 0 {
//            print(0)
//        } else if r1 + r2 == distance || abs(r2 - r1) == distance {
//            print(1)
//        } else {
//            print(2)
//        }
//}


let T = Int(readLine()!)!
for _ in 1...T {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    var r1 = arr[2]
    var r2 = arr[5]
    let r = ((arr[0] - arr[3]) * (arr[0] - arr[3])) + ((arr[1] - arr[4]) * (arr[1] - arr[4]))
    
    if r2 > r1 {
        let temp = r1
        r1 = r2
        r2 = temp
    }
    
    if r1 == r2 && r == 0 {
        print("-1")
    }else if (r1 - r2) * (r1 - r2) > r || (r1 + r2) * (r1 + r2) < r  {
        print("0")
    }else if (r1 + r2) * (r1 + r2) == r || r  == (r1 - r2) * (r1 - r2) {
        print("1")
    }else {
        print("2")
    }
}
