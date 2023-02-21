//
//  main.swift
//  17478_재귀함수가 뭔가요?
//
//  Created by 변상필 on 2023/02/20.
//

import Foundation

//let str1 = "어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다."
//let str2 = """
//"재귀함수가 뭔가요?"
//"""
//let str3 = """
//"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.
//마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.
//그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어."
//"""
//let str4 = """
//"재귀함수는 자기 자신을 호출하는 함수라네"
//"""
//let str5 = "라고 답변하였지."

let underbar = "____"

let strlist = ["어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.",
               "\"재귀함수가 뭔가요?\"",
               "\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.",
               "마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.",
               "그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"",
               "\"재귀함수는 자기 자신을 호출하는 함수라네\"",
               "라고 답변하였지."
]

let input = Int(readLine()!)!

print(strlist[0])
recursion(0)

func recursion(_ a: Int) {
    print(String(repeating: underbar, count: a)+strlist[1])

    if input == a {
        print(String(repeating: underbar, count: a) + strlist[5])
        print(String(repeating: underbar, count: a) + strlist[6])
        return
    }
    
    print(String(repeating: underbar, count: a)+strlist[2])
    print(String(repeating: underbar, count: a)+strlist[3])
    print(String(repeating: underbar, count: a)+strlist[4])

    recursion(a+1)
    
    print(String(repeating: underbar, count: a) + strlist[6])
}

