//var cache: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)
//
//func w(_ a: Int, _ b: Int, _ c: Int) -> Int{
//    if a <= 0 || b<=0 || c<=0 {
//        return 1
//    }
//    if a<21, b<21, c<21, cache[a][b][c] != 0 {
//        return cache[a][b][c]
//    }
//    if a>20 || b>20 || c >= 20 {
//        cache[20][20][20] = w(20, 20, 20)
//        return cache[20][20][20]
//    }
//    if a<b, b<c {
//        cache[a][b][c] = w(a,b,c-1) + w(a,b-1,c-1) - w(a,b-1,c)
//        return cache[a][b][c]
//    }
//    cache[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
//    return cache[a][b][c]
//}
//
//while true {
//    var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//    if input[0] == -1, input[1] == -1, input[2] == -1 {
//        break
//    }
//    print("w(\(input[0]), \(input[1]), \(input[2])) = \(w(input[0], input[1], input[2]))")
//}


// 이건 왜 메모리 초과 안뜸??
var dp :  [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)

func w (a: Int, b: Int, c: Int) -> Int{
    if a <= 0 || b <= 0 || c <= 0{
        return 1
    }

    if a < 21, b < 21, c < 21, dp[a][b][c] != 0 {
        return  dp[a][b][c]
    }

    if a > 20 || b > 20 || c > 20{
        dp[20][20][20] = w(a: 20, b: 20, c: 20)
        return  dp[20][20][20]
    }

    if a < b, b < c{
        dp[a][b][c] = w(a: a, b: b, c: c - 1) + w(a: a, b: b - 1, c: c - 1) - w(a: a, b: b - 1, c: c)
        return dp[a][b][c]
    }

    dp[a][b][c] = w(a: a - 1, b: b, c: c) + w(a: a - 1, b: b - 1, c: c) + w(a: a - 1, b: b, c: c - 1) - w(a: a - 1, b: b - 1, c: c - 1)
    return dp[a][b][c]
}

while true{
    var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    if arr[0] == -1, arr[1] == -1, arr[2] == -1{
        break
    }
    print("w(\(arr[0]), \(arr[1]), \(arr[2])) =",w(a: arr[0], b: arr[1], c: arr[2]))
}
