import Foundation

func solution(_ numbers:[Int]) -> Int {
    var newArr: [Int] = Array(repeating: 0, count: 10)
    var ans = 0
    
    for i in numbers.sorted() {
        newArr[i] = i
    }
    
    for i in newArr.enumerated() {
        if i.element == 0 {
            print(i.offset)
            ans += i.offset
        }
    }
    return ans
}