import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    var ans: [String] = str_list
    for i in 0..<ans.count {
        if ans[i].contains(ex) {
            ans[i] = ""
        }
    }
    return ans.joined()
}