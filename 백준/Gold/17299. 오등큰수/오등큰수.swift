let cnt = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map {
     Int(String($0))!}
// [1, 1, 2, 3, 4, 2, 1]

var ans = Array(repeating: -1, count: cnt)
var stack: [Int] = []

//let dict = Dictionary(input.map { ($0, 1) }, uniquingKeysWith: +) // 이럴때는 배열보다 딕셔너리를 쓰자
//
//for i in input {
//    numsCnt[i] += 1
//}
//
//for i in 0..<cnt {
//    while !stack.isEmpty && dict[input[i]]! > dict[input[stack.last!]]! {
//        ans[stack.removeLast()] = input[i]
//    }
//    stack.append(i)
//
//}
//print(ans.map{ String($0)}.joined(separator: " "))

// 입력된 숫자 중 최대값을 찾고, numsCnt 배열의 크기를 설정
let maxInputValue = input.max() ?? 0
var numsCnt = Array(repeating: 0, count: maxInputValue + 1)

// 각 숫자의 빈도수를 계산
for i in input {
    numsCnt[i] += 1
}

// 스택을 사용하여 결과 배열을 채우기
for i in 0..<cnt {
    while !stack.isEmpty && numsCnt[input[i]] > numsCnt[input[stack.last!]] {
        ans[stack.removeLast()] = input[i]
    }
    stack.append(i)
}

print(ans.map { String($0) }.joined(separator: " "))
