//
//  main.swift
//  2747_피보나치 수
//
//  Created by 변상필 on 2023/02/27.
//

import Foundation


// 시간초과
//let n = Int(readLine()!)!
//func Fibonacci(_ n: Int) -> Int {
//    if n <= 1 {
//        return n
//    }
//    return Fibonacci(n-1) + Fibonacci(n-2)
//}
//
//print(Fibonacci(n))


//이건 왜틀렸는지 모르겠음 ;;
//let n = Int(readLine()!)!
//func Fibonacci(_ n: Int){
//    var a = 0, b = 1
//    if n <= 1 {
//        print(n)
//    }
//    for _ in 0..<n {
//        let temp = a
//        a = b
//        b = temp + b
//        //print(a)
//        //print(i)
//    }
//    print(a)
//}
//Fibonacci(n)

//이건 인터넷에서 가져온거
func fibonacci(_ n: Int) -> Int {
    var n = n, a = 0, b = 1
    var temp = a
    while n > 0 {
        a = b
        b = temp+b
        temp = a
        n -= 1
    }
    return a
}

let n = Int(readLine()!)!
print(fibonacci(n))
