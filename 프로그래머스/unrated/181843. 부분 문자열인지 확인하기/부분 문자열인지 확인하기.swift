import Foundation

func solution(_ my_string:String, _ target:String) -> Int {
    return my_string.lowercased().contains(target.lowercased()) ? 1 : 0
}