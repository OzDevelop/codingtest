import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    var ans: [String] = []
    
    for i in 0..<todo_list.count {
        if finished[i] == false {
            ans.append(todo_list[i])
        }
    }

    return ans
}