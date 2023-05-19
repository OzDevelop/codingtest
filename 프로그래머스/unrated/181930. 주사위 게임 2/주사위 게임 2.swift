import Foundation
func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    var result = 0
    var result1 = pow(Float(a), 2) + pow(Float(b),2) + pow(Float(c),2)
    var result2 = (pow(Float(a),3) + pow(Float(b),3) + pow(Float(c),3))
    if a != b && a != c && b != c {
        return a+b+c
        print("1",result1)
        print(result2)

    }else if a == b && b == c {
        result = (a + b + c) * Int(result1) * Int(result2)
    }else if a == b || a == c || b == c {
        result = Int(a + b + c) * Int(result1)
    }
    return result

}