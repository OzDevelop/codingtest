import Foundation


func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for i in signs.indices {
        if signs[i] == true {
            result += absolutes[i]
        } else {
            result -= absolutes[i]
        }
    }
    return result
}
