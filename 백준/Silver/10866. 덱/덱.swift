import Foundation

let n = Int(readLine()!)!

var deque = [Int]()

for _ in 0..<n {
    let a = readLine()!.split(separator: " ").map { String($0) }
    
    switch a[0] {
    case "push_front":
        push_front(Int(a[1])!)
    case "push_back":
        push_back(Int(a[1])!)
    case "pop_front":
        print(pop_front())
    case "pop_back":
        print(pop_back())
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


// 함수
func push_front(_ x : Int) {
    deque.insert(x, at: 0)
}
func push_back(_ x : Int) {
    deque.append(x)
}
func pop_front()-> Int{
    deque.isEmpty ? -1 : deque.removeFirst()
}
func pop_back()-> Int{
    deque.isEmpty ? -1 : deque.removeLast()
    
}
func size()-> Int {
    return deque.count
}
func empty() -> Int {
    deque.isEmpty ? 1 : 0
}
func front() -> Int {
    deque.isEmpty ? -1 : deque.first!
}
func back() -> Int{
    deque.isEmpty ? -1 : deque.last!

}
