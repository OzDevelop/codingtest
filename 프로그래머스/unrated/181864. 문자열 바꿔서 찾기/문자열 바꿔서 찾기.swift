import Foundation
func solution(_ myString:String, _ pat:String) -> Int {
    return myString.enumerated().map{ $0.element == "A" ? "B" : "A"}.joined().contains(pat) ? 1 : 0
}