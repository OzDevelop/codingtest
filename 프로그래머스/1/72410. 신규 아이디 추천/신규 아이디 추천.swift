func solution(_ new_id:String) -> String {
    var ans = new_id.lowercased()
    print("1단계 끝 -> \(ans)")

    ans = ans.filter{ $0.isLowercase || $0 == "-" || $0 == "_" || $0 == "." || $0.isNumber }
    print("2단계 끝 -> \(ans)")
    ans = ans.replacingOccurrences(of: "\\.+", with: ".", options: .regularExpression)
    print("3단계 끝 -> \(ans)")
    
    if ans.last == "." {
        ans.removeLast()
    }
    if ans.first == "." {
        ans.removeFirst()
    }
    print("4단계 끝 -> \(ans)")
    
    if ans.isEmpty {
        ans.append("a")
    }
    print("5단계 끝 -> \(ans)")
    
    if ans.count >= 16 {
        ans = String(ans.prefix(upTo: ans.index(ans.startIndex, offsetBy: 15)))
        if ans.last == "." {
            ans.removeLast()
        }
    }
    print("6단계 끝 -> \(ans)")
    if ans.count <= 2 {
        let tmp = ans.last!
        while ans.count < 3 {
            ans.append(tmp)
        }
    }
    print("7단계 끝 -> \(ans)")
    return ans
}