import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var ans: [Int] = Array(repeating: 0, count: targets.count)

    var dict: [Character: Int] = [:]

    for string in keymap {
        for (index, char) in string.enumerated() {

            dict[char] = min(dict[char] ?? 100, index + 1)
        }
    }
    print(dict)
    
    for (index, string) in targets.enumerated() {
        for char in string {
            guard let count = dict[char] else {
                ans[index] = -1
                break
            }
            ans[index] += count
        }
    }
    return ans
}