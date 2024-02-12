func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var IntArr1: [String] = []
    var IntArr2: [String] = []
    
    func decimalToBinary(_ decimal: Int) -> String {
        var result = ""
        var num = decimal
        
        while num > 0 {
            let remainder = num % 2
            result = String(remainder) + result
            
            num /= 2
        }
        while result.count < n {
            result = "0" + result
        }
        
        return result
    }
    
    for i in 0..<n {
        IntArr1.append(decimalToBinary(arr1[i]))
        IntArr2.append(decimalToBinary(arr2[i]))
        
    }
    let totalArr1 = IntArr1.joined()
    let totalArr2 = IntArr2.joined()
    
    
    var tmp = ""
        
    for (bin1, bin2) in zip(totalArr1, totalArr2) {
        
        if bin1 == "1" || bin2 == "1" {
            tmp += "1"
        
        } else {
            tmp += "0"
        
        }
    }
        tmp = tmp.replacingOccurrences(of: "0", with: " ")
        tmp = tmp.replacingOccurrences(of: "1", with: "#")
    
    func splitNumbersToArray(_ numbers: [String], length: Int) -> [String] {
        var result: [String] = []
        
        for number in numbers {
            let numberString = String(number)
            for i in stride(from: 0, to: numberString.count, by: length) {
                let startIndex = numberString.index(numberString.startIndex, offsetBy: i)
                let endIndex = numberString.index(startIndex, offsetBy: length, limitedBy: numberString.endIndex) ?? numberString.endIndex
                let subString = String(numberString[startIndex..<endIndex])
                result.append(subString)
            }
        }
        
        return result
    }
    
    print(splitNumbersToArray(Array(arrayLiteral: tmp), length: n))
    return splitNumbersToArray(Array(arrayLiteral: tmp), length: n)
}