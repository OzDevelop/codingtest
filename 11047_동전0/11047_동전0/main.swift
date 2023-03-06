//
//  main.swift
//  11047_동전0
//
//  Created by 변상필 on 2023/03/01.
//

import Foundation

let nk = readLine()!.split(separator: " ").map{ Int(String($0))!}
let n = nk[0]
var k = nk[1]

var nlist: Array<Int> = []
var result = 0

for _ in 0..<n {
    nlist.append(Int(readLine()!)!)
}

for i in nlist.reversed() {
    if i <= k{
        result += (k/i)
        k = k%i
        
    } else if k == 0 {
        break
    }
}
print(result)

//print(nlist)
                    


