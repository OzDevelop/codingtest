import Foundation

let n = Int(readLine()!)!
var stack : [Int] = []

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
    case "top":
        print(top())
    default:
        break
    }
}

//함수
func push(_ x : Int) {
    stack.append(x)
}

func pop() -> Int {
    if let popValue = stack.popLast() {
        return popValue
    } else {
        return -1
    }
}

func size() -> Int {
    return stack.count
}

func empty() -> Int {
    if stack.isEmpty {
        return 1
    } else {
        return 0
    }
}

func top() -> Int {
    if let last = stack.last {
        return last
    } else {
        return -1
    }
}