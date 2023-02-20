//
//  main.swift
//  10162_전자레인지

import Foundation

func solution() -> String {
    var T = Int(readLine()!)!
    var result = ["0", "0", "0"]
    let button = [300, 60, 10]

    //print(type(of: result))

    for i in 0..<3 {
        if button[i] <= T {
            result[i] = String((T / button[i]))
            T = (T - (T / button[i]) * button[i])
        }
//        print(T)
        if T == 0 {
            let answer = result.joined(separator: " ")
            return answer
        }
    }
    return "-1"
}
 
print(solution())

