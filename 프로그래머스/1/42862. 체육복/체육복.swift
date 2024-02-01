import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostSet = Set(lost.sorted()).subtracting(reserve)
    let reserveSet = Set(reserve).subtracting(lost).sorted()
     
    for i in reserveSet {
        if lostSet.contains(i - 1) {
            lostSet.remove(i - 1)
          
        } else if lostSet.contains(i + 1) {
            lostSet.remove(i + 1)
        }
        
    }
    return n - lostSet.count
}