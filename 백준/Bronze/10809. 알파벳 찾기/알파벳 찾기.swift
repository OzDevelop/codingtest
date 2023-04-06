import Foundation

let n = Array(readLine()!)

for i in Character("a").asciiValue!...Character("z").asciiValue! {
    var char = Character(UnicodeScalar(i))
//    print(char)
    if n.contains(char) {
        print("\(n.firstIndex(of: char)!)", terminator: " ")
    } else {
        print("-1", terminator: " ")
    }
}