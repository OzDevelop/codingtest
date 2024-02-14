func solution(_ dartResult:String) -> Int {
    var ans: [Int] = []
    var tmp = ""
    
    let dartResult = dartResult.map{ String($0)}
    
    for char in dartResult.enumerated() {
        switch char.element {
        case "S":
            ans.append(Int(tmp)!)
            tmp = ""
        case "D":
            ans.append(Int(tmp)! * Int(tmp)!)
            tmp = ""
        case "T":
            ans.append(Int(tmp)! * Int(tmp)! * Int(tmp)!)
            tmp = ""
        case "*":
            if char.offset > 3 {
                ans[ans.count - 2] *= 2
            }
            ans[ans.count - 1] *= 2
            break
        case "#":
            ans[ans.count - 1] *= -1
            break
        default:
            if char.element != "S" || char.element != "D" || char.element != "T" || char.element != "*" || char.element != "#" {
                tmp += char.element
            }
        }
    }
    return ans.reduce(0, +)
}