
func solution(_ a:Int, _ b:Int) -> String {
    let yearMonthDic = [1 : 31, 2 : 29, 3 : 31, 4 : 30, 5 : 31, 6 : 30, 7 : 31, 8 : 31, 9 : 30, 10 : 31, 11 : 30, 12 : 31]
    let dayArr = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let calDay = yearMonthDic.filter{ $0.key < a}.map { $0.value}.reduce(0, +) + b
    
    var ans = ""
    
    for i in 0..<calDay {
        ans = dayArr[i % dayArr.count]
    }
    return ans
}