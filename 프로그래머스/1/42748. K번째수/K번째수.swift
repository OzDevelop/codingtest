import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var ans: [Int] = []
    
    for i in commands {
        let tmpArr = Array(array[i[0] - 1...i[1] - 1])
        ans.append(contentsOf: tmpArr.sorted().enumerated().filter{ $0.offset == i[2] - 1 }.map{$0.element})
    }
    return ans
}