import Foundation

let N = Int(readLine()!)!

func recursion(_ N: Int)->Int {
    if N == 0 {
        return 1
    }
    return N * recursion(N - 1)
    
}

print(recursion(N))
