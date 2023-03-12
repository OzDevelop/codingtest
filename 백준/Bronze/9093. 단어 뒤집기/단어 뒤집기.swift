import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let stringArr = readLine()!.split{ $0 == " "}
    var wordArr = [String]()
    var revText : String
    //    print(stringArr)
    
    for i in stringArr{
//         print(i)
        var tmp = String(i.reversed())

//        print(tmp)
        wordArr.append(tmp)
    }
    revText = wordArr.joined(separator: " ")
    print(revText)
}