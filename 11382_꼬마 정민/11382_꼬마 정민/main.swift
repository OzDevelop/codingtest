//
//  main.swift
//  11382_꼬마 정민
//
//  Created by 변상필 on 2023/02/22.
//

import Foundation

let num = readLine()!.split(separator: " ").map{ Int(String($0))!}
var result = 0

for i in 0...2 {
   result += num[i]
}
print(result)

