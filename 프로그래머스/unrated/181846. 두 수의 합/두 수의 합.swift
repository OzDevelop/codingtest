import Foundation


func solution(_ a:String, _ b:String) -> String {
    var a = a, b = b
    var temp = 0
    var result = ""
    
    while true {
        var sum = temp
        
        // a가 빈문자열이 아니면, 
        // 마지막 숫자를 더하고, 
        // 마지막 숫자 제거
        if a != "" {
            sum += Int(String(a.last!))!
            a.removeLast()
        }
        
        // a와 동일
        if b != "" {
            sum += Int(String(b.last!))!
            b.removeLast()
        }
        
        // 1의 자리의 합의 1의 자리(현재 자릿수) + 이전 계산값 
        result = String(sum % 10) + result
        // 10의 자릿수(다음 자릿수 + 1)
        temp = sum / 10   
        
        // 모든 문자열이 비워지면 종료
        if a == "" && b == "" {
            break
        }
    }
    
    // temp가 남아있으면 추가
    if temp != 0 {
        result = String(temp) + result
    }
    
    return result
}
