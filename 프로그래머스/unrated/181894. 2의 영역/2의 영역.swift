import Foundation

func solution(_ arr:[Int]) -> [Int] {
    guard let firstIndex = arr.firstIndex(of: 2), let lastIndex = arr.lastIndex(of: 2)  else {
            return [-1]
        }
    return Array(arr[firstIndex...lastIndex])
}