import Foundation

func solution(_ number:String) -> Int {
    let numArr = number.map{ Int(String($0))!}
    
    return numArr.reduce(0) { $0 + $1 } % 9
}