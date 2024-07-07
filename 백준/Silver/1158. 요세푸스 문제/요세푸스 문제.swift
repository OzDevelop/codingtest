let nk = readLine()!.split(separator: " ").map{ Int(String($0))!}

var nums: [Int] = Array(1...nk[0])
var ans: [Int] = []

var k = nk[1] - 1

for _ in 1...nk[0] {
    ans.append(nums.remove(at: k))
    if nums.isEmpty { break }
    k = (k + nk[1] - 1) % nums.count
    


}
print("<" + ans.map({String($0)}).joined(separator: ", ") + ">")