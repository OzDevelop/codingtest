let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let cutline = input[1]

var point = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted { $0 > $1}
print(point[cutline - 1])
