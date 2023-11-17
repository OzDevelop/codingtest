import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
    return Array(stride(from: start, through: end_num, by: -1))
}
