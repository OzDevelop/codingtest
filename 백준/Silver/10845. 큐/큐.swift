import Foundation

let n = Int(readLine()!)!
var queue: [Int] = []

for _ in 0..<n {
    let a = readLine()!.split(separator: " ").map {String($0)}
    
    switch a[0] {
    case "push":
        push(Int(a[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        break
    }

}

func push (_ x : Int) {
    queue.append(x)
}

func pop () -> Int {
    if size() != 0 {
        return queue.removeFirst()
    } else {
        return -1
    }
}

func size() -> Int{
    return queue.count
}
func empty () -> Int {
    if queue.isEmpty {
        return 1
    } else { return 0 }
}
func front() -> Int {
        return queue.first ?? -1
}
func back() -> Int {
        return queue.last ?? -1
}
