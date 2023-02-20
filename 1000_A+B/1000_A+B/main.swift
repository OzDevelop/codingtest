//
//  main.swift
//  1000_A+B


import Foundation

func solution() -> Int {
    var a = readLine()!.split(separator: " ").map{ Int(String($0))!}
    
    var result = a[0] + a[1]
    return result
}

print(solution())
