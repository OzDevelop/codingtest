import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    var ans: [Int] = []
    
    switch n{
    case 1:
        ans = Array(num_list[0...slicer[1]])
    case 2:
        ans = Array(num_list[slicer[0]...num_list.count - 1])
    case 3:
        ans = Array(num_list[slicer[0]...slicer[1]])
    case 4:
        for i in stride(from: slicer[0], through: slicer[1], by: slicer[2]) {
                    ans.append(num_list[i])
                }
    default:
        break
    }
    return ans
}