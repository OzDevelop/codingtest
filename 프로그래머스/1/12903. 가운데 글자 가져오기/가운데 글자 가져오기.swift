func solution(_ s:String) -> String {
    let ans = s.map{$0}
    let center = ans.count / 2
    
    if ans.count % 2 == 0 {
        return "\(ans[center - 1])\( ans[center])"
    } else {
        return "\(ans[center])"
    }
}