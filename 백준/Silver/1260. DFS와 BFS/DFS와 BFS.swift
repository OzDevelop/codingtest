import Foundation

// 정점 개수: N, 간선 개수: M, 탐색 시작 정점 번호: V

// 초기값 세팅
let input = readLine()!.split(separator: " ").map{ Int(String($0))!}

let N = input[0]
let M = input[1]
let V = input[2]

var edgeInfo: [Int: Array<Int>] = [:]
var visited: [Bool] = Array(repeating: false, count: N + 1)

var answer = ""

// 그래프 edge 정보 setup
//for _ in 0..<M {
//    let nodeInfo = readLine()!.split(separator: " ").map{ Int(String($0))!}
//    
//    if var array = edgeInfo[nodeInfo[0]] {
//        array.append(nodeInfo[1])
//        edgeInfo[nodeInfo[0]] = array
//    } else {
//        edgeInfo[nodeInfo[0]] = [nodeInfo[1]]
//    }
//}

var graph : [[Int]] = Array(repeating: [], count: N+1)

for _ in 0..<M {
    let relation = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = relation[0]
    let b = relation[1]
    graph[a].append(b)
    graph[b].append(a)
    graph[a].sort()
    graph[b].sort()
}

func DFS(node: Int) {
    visited[node] = true
    answer += "\(node) "
    
    for edge in graph[node] {
        if !visited[edge] {
            DFS(node: edge)
        }
    }
}

func BFS(node: Int) {
    // 방문해야 하는 노드
    var needVisited: [Int] = [node]
    // 방문한 노드
    var visited = Set<Int>()
    
    while !needVisited.isEmpty {
        let node = needVisited.removeFirst()
        if !visited.contains(node) {
            visited.insert(node)
            answer += "\(node) "
            needVisited.append(contentsOf: graph[node])
            
        }
    }
}

DFS(node: V)
print(answer)
answer = ""
BFS(node: V)
print(answer)