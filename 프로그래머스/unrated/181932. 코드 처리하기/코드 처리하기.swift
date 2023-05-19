func solution(_ code:String) -> String {
    var mode = 0
    let codeArr = code.map{$0}
    var ret = ""
    
    for idx in 0..<codeArr.count {
        if mode == 0 {
            if String(codeArr[idx]) != "1" {
                if idx % 2 == 0 {
                    ret += String(codeArr[idx])
                }
            }else if String(codeArr[idx]) == "1" {
                mode = 1
            }
        }
        else if mode == 1 {
            if String(codeArr[idx]) != "1" {
                if idx % 2 == 1 {
                    ret += String(codeArr[idx])
                }
            } else if String(codeArr[idx]) == "1" {
                mode = 0
            }
            
        }
        if mode == 0 {
            if ret == "" {
            return "EMPTY"
        }
        }
        
        
        //print(mode)
    }
    return ret

}