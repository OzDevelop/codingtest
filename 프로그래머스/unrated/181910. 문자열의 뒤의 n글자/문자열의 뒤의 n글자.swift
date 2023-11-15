import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return Array(my_string.map{String($0)}[my_string.count - n...my_string.count - 1]).joined()
}
