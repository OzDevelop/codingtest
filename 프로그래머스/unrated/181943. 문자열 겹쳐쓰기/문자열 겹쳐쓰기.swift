import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    let a = my_string.prefix(s)
    let b = overwrite_string
    let c = my_string.suffix(my_string.count - overwrite_string.count - s)
    return a + b + c
}


