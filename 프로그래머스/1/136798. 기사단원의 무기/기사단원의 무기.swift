import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {

    var ans = 0
    for i in 1...number{
        var cnt = 0
        
        for j in 1...Int(sqrt(Double(i))){
            if i % j == 0{
                cnt += 1
                if j * j != i{
                    cnt += 1
                }
            }
        }
        if cnt > limit{
            ans += power
        }else{
            ans += cnt
        }
        
    }
    return ans
}