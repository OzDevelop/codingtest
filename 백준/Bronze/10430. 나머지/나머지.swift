let input = readLine()!.split(separator: " ").map{ Int(String($0))!}

let (A, B, C) = (input[0], input[1], input[2])

print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
