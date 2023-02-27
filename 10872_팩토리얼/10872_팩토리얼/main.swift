//
//  main.swift
//  10872_팩토리얼
//

import Foundation

var N = Int(readLine()!)!

func recursion(_ N: Int)->Int {
    if N == 0 {
        return 1
    }
    return N * recursion(N - 1)
    
}


//import Foundation
//
//let num = Int(readLine()!)!
//
//func calculate (num : Int) -> Int {
//    if num == 0 {
//        return 1
//    }
//    return num * calculate(num: num - 1)
//}
//
//print(calculate(num: num))
