import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var tmp = n
    let conArr = control.map{$0}
    for i in conArr {
        switch i {
        case "w":
            tmp += 1
        case "a":
            tmp -= 10
        case "s":
            tmp -= 1
        case "d":
            tmp += 10
        default:
            Void.self
        }
    }
    return tmp
}