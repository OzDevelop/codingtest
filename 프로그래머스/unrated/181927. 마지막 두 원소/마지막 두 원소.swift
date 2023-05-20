import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var resultArr : [Int] = num_list
    if num_list.last! > num_list[num_list.count-2] {
        resultArr.append(num_list[num_list.count-1]-num_list[num_list.count-2])
    } else {
        resultArr.append(num_list[num_list.count-1]*2)
    }
    return resultArr
}
