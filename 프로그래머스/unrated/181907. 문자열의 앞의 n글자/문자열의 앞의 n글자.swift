import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return Array(my_string.map{String($0)}[0...n-1]).joined()
}
