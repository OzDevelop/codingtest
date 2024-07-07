let n = Int(readLine()!)!
var deque: [Int] = []

func push_front(_ x: Int) {
    deque.insert(x, at: 0)
}
func push_back(_ x: Int) {
    deque.append(x)
}
func pop_front() {
    if deque.isEmpty {
        print("-1")
    } else {
        print(deque.remove(at: 0))
    }
}
func pop_back() {
    if deque.isEmpty {
        print("-1")
    } else {
        print(deque.popLast()!)
    }
}
func size() {
    print(deque.count)
}
func empty() {
    if deque.isEmpty {
        print("1")
    } else {
        print("0")
    }
}
func front() {
    if deque.isEmpty {
        print("-1")
    } else {
        print(deque.first!)
    }
}
func back() {
    if deque.isEmpty {
        print("-1")
    } else {
        print(deque.last!)
    }
}


for _ in 0..<n {
    let cmd = readLine()!.split(separator: " ")
    
    switch cmd[0] {
    case "push_front":
        if let x = Int(cmd[1]) {
            push_front(x)
        }
    case "push_back":
        if let x = Int(cmd[1]) {
            push_back(x)
        }
    case "pop_front":
        pop_front()
    case "pop_back":
        pop_back()
    case "size":
        size()
    case "empty":
        empty()
    case "front":
        front()
    case "back":
        back()
    default:
        break
    }
}
