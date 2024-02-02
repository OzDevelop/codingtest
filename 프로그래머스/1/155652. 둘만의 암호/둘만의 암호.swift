import Foundation
func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var sArr: [Int] = s.map{Int(UnicodeScalar(String($0))!.value) }
    var skipArr: [Int] = skip.map{Int(UnicodeScalar(String($0))!.value) }
    print(skipArr)
    
    for i in sArr.enumerated() {
        var indexAns = 0
        
        while indexAns < index {
            sArr[i.offset] += 1
            
            if sArr[i.offset] > 122 {
                sArr[i.offset] -= 26
            }
            
            if skipArr.contains(sArr[i.offset]) {
                continue
            } else {
                indexAns += 1
            }
            
        }
    }
    ///122 == "z", 97 == "a"
    return sArr.map{UnicodeScalar($0)! }.map{String($0)}.joined()
}
