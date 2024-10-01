let n = readLine()!.split(separator: " ").map{Int(String($0))!}
let A = n[0]
let I = n[1]

print(A * (I-1) + 1)