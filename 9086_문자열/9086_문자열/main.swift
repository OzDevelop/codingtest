//
//  main.swift
//  9086_문자열
//
//  Created by 변상필 on 2023/03/04.
//

import Foundation

var n = Int(readLine()!)!
var arr: [String] = []

for i in 0..<n {
    arr.append(String(readLine()!))
    print(arr[i].first!,arr[i].last!,separator: "" )
}
