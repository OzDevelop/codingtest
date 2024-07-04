let count = Int(readLine()!)!

var stack: [Int] = []

for _ in 0..<count {
    let tmpArr: [String] = readLine()!.split(separator: " ").map {String($0)}
//    tmpArr.append(contentsOf: readLine()!.components(separatedBy: " "))
    
    switch tmpArr.first {
    case "push":
        push(Int(tmpArr.last!)!)
    case "pop":
        pop()
    case "size":
        size()
    case "empty":
        empty()
    case "top":
        top()
    default:
        break
    }
}

func push(_ i : Int) {
    stack.append(i)
}

func pop(){
    print(!stack.isEmpty ? stack.popLast()! : -1)
}

func size() {
    print(stack.count)
}

func empty(){
    print(stack.isEmpty ? 1 : 0)
}

func top(){
    print(stack.isEmpty ? -1 : stack.last!)
}