import Foundation

func solution(_ myString:String) -> String {
    return myString.map {
        
        if let ascii = $0.asciiValue, ascii < 108 {
            return String("l")
        } else {
            return String($0)
        }
    }.joined()
}
