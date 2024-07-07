let n = Int(readLine()!)!
var queue: [Int] = []

for _ in 0..<n {
    let cmd = readLine()!.split(separator: " ")
    switch cmd[0] {
    case "push":
        if let x = Int(cmd[1]) {
            push(x)
        }
    case "pop":
        pop()
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

func push(_ x: Int) {
    queue.append(x)
}

func pop() {
    if !queue.isEmpty {
        print(queue[0])
        queue.removeFirst()
    } else {
        print("-1")
    }
}

func size() {
    print(queue.count)
}

func empty() {
    print(queue.isEmpty ? "1" : "0")
}

func front() {
    if !queue.isEmpty {
        print(queue.first!)
    } else {
        print("-1")
    }
}

func back() {
    if !queue.isEmpty {
        print(queue.last!)
    } else {
        print("-1")
    }
}