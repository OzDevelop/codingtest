import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let parkArr = park.map{ Array($0) }
    var nowRoute:[Int] = []
    
    // 출발 지점 구하기
    outerLoop: for i in parkArr.indices {
        for j in parkArr[i].indices {
            if parkArr[i][j] == "S" {
                nowRoute = [i, j]
                break outerLoop
            }
        }
    }
    
    let (w, h) = (parkArr[0].count, parkArr.count)
    
    func move(_ direction: String, _ distance: Int) -> [Int] {
        
        var current = nowRoute
        
        let dx = [1, -1, 0, 0]
        let dy = [0, 0, 1, -1]
        
        let directions = ["E", "W", "S", "N"]
        let i = directions.firstIndex(of: direction)!
        
        for _ in 1...distance {
            let nextX = current[1] + dx[i]
            let nextY = current[0] + dy[i]
            
            if !(nextX >= 0 && nextX < w && nextY >= 0 && nextY < h && parkArr[nextY][nextX] != "X") {
                return nowRoute
            } else {
                current[1] = nextX
                current[0] = nextY
            }
        }
        return current
    }
    
    for route in routes {
        let command = route.split(separator: " ")
        let (direction, distance) = (String(command[0]), Int(command[1])!)
        nowRoute = move(direction, distance)
    }
    return [nowRoute[0], nowRoute[1]]
}