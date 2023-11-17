import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let ansArr = code.map{ String($0)}
    var ans = ansArr.indices.filter{
        $0 % q == r
    }.map {
        ansArr[$0]
    }.joined()

//    for i in 0..<ansArr.count {
//        if i % q == r {
//            ans += ansArr[i]
//        }
//    }
    return ans
}