import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let ArrStr1 = str1.map{$0}
    let ArrStr2 = str2.map{$0}
    var result = ""
    for i in 0..<min(ArrStr1.count, ArrStr2.count) {
       result += "\(ArrStr1[i])\(ArrStr2[i])"
    }
    return result
}