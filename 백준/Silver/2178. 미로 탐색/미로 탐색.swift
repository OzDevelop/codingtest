let nm = readLine()!.split(separator: " ").map{ Int(String($0))!}


var graph = [[Int]]()

for _ in 0..<nm[0] {
    let tmp = readLine()!.map{ Int(String($0))!}
    graph.append(tmp)
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func bfs(_ x: Int, _ y: Int) -> Int {
    var queue = [(x, y)]
    
    while !queue.isEmpty {
        let xy = queue.removeFirst()
        let x = xy.0
        let y = xy.1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            
            if nx < 0 || nx >= nm[0] || ny < 0 || ny >= nm[1] {
                continue
            }
            if graph[nx][ny] == 0 {
                continue
            }
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue += [(nx, ny)]
            }
        }
    }
    
    return graph[nm[0]-1][nm[1]-1]
    
}

print(bfs(0,0))