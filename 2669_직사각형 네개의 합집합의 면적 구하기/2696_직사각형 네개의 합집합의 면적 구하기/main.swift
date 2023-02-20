
//  main.swift
//  2669_직사각형 네개의 합집합의 면적 구하기


import Foundation

// 2차원 배열 좌표 구현
var matrix = Array(repeating: Array(repeating: 0, count: 10), count: 10)

for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    let (minX, minY, maxX, maxY) = (input[0], input[1], input[2], input[3])
    
    for x in minX..<maxX {
        for y in minY..<maxY {
            matrix[x][y] = 1
        }
    }
}

var ans = 0

for x in 0..<10 {
    for y in 0..<10 {
        ans += matrix[x][y]
    }
}
print(ans)


