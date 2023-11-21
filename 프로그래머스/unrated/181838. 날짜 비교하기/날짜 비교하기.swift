import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    var ans = 0
    
    for i in 0..<3 {
        if date1[i] < date2[i] {
            print(date1[i])
            print(date2[i])
            ans = 1
            break
        } else if date1[i] > date2[i] {
            break
        } else {
            continue
        }
    }
    return ans
}