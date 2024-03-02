import Foundation

// 모든 달은 28일까지 있다고 가정
func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = today.split(separator: ".").map{ Int(String($0))! }
//    var dayTerms = terms.map { $0.split(separator: " ") }
//                        .map { [$0[0], (Int($0[1]) ?? 0)] }
    var ans: [Int] = []
    
    let y = today[0]
    let m = today[1]
    let d = today[2]
    print(today)
    var dic:[String:Int] = [:]
    
    terms.forEach {
        let l = $0.split(separator: " ")
        dic[String(l[0])] = Int(String(l[1]))!
    }
    print(dic)
//    print(privaciesArr)
    
    for i in 0..<privacies.count {
        let list = privacies[i].split(separator: " ").map{ String($0) }
        let pl = list[0].split(separator: ".").map{ Int(String($0))! }
        
        var py = pl[0]
        var pm = pl[1]
        let pd = pl[2]

        pm += dic[list[1]]!
        py += (pm-1)/12
        pm = pm%12 == 0 ? 12 : pm%12
        
        if py < y {
            ans.append(i+1)
        } else if py == y {
            if pm < m {
                ans.append(i+1)
            } else if pm == m {
                if pd <= d {
                    ans.append(i+1)
                }
            }
        }
    }
    
    return ans
}