let count = Int(readLine()!)!

for _ in 0..<count {
    let sentence = readLine()!.split(separator: " ")
    var result: [String] = []
    
    for i in 0..<sentence.count {
        result.append(String(sentence[i].reversed()))
    }
    print(result.joined(separator: " "))
}