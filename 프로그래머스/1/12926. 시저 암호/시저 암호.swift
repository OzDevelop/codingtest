func solution(_ s:String, _ n:Int) -> String {
    var ansArr = Array(s).map{ String($0)}
    
    for i in 0..<ansArr.count {
        if ansArr[i] == " " {
            continue
        } else {
            let tmp = Int(UnicodeScalar(String(ansArr[i]))!.value)
            
            ansArr[i] = (tmp <= 90 && tmp + n > 90) || (tmp <= 122 && tmp + n > 122) ? String(UnicodeScalar(tmp + n - 26)!) : String(UnicodeScalar(tmp + n)!)
        }
    }
    
    return ansArr.joined()
}
