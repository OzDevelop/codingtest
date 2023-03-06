//
//  main.swift
//  1260_dfs와bfs
//
//  Created by 변상필 on 2023/02/28.
//

import Foundation

public struct Queue<T> {
  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public mutating func enquque(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  public var front: T? {
    return array.first
  }
}

//graph
let graph = [
    [],
    [2,3],
    [1,4,5],
    [1,6,7],
    [2],
    [2],
    [3],
    [3,8],
    [7]
]

var visited = Array.init(repeating: false, count: graph.count)

//print(visited)
//print(graph)

//DFS
func dfs(start: Int){
    visited[start] = true
    //print(visited)
    print(start,terminator: " ")
    
    for i in graph[start] {
        //print(graph[start])
        //print(i)
        if !visited[i] {
            dfs(start: i)
        }
    }
}

//dfs(start: 1)
//1 2 4 5 3 6 7 8

var queue = Queue<Int>()
//BFS
func bfs(start: Int){
    queue.enquque(start)
    visited[start] = true
    
    while !queue.isEmpty {
        guard let elem = queue.dequeue() else { return }
        print(elem, terminator:" ")
        
        for i in graph[elem] {
            if !visited[i] {
                queue.enquque(i)
                visited[i] = true
            }
        }
    }
}
bfs(start: 1)
