import Foundation

func solution(_ food:[Int]) -> String {
    var ans = ""
    for i in food.indices {
        ans += String(repeating: String(i), count: food[i]/2)
    }
    ans = ans + String(0) + ans.reversed()
    return ans
}


//sfsdfsdfs
