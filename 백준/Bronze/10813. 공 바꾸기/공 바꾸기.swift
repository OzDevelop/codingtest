import Foundation
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    var ansArr: [Int] = Array(1...input[0])
    
    for _ in 0..<input[1] {
        let tmp = readLine()!.split(separator: " ").map{ Int(String($0))! }
        
        ansArr.swapAt(tmp[0]-1, tmp[1]-1)
    }
    print(ansArr.map{ String($0) }.joined(separator: " "))
