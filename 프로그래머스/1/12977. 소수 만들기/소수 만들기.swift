import Foundation

func solution(_ nums:[Int]) -> Int {
    
    func getPrimeNum(_ num: Int) -> Bool {
        for i in 2..<num {
            if i*i <= num {
                if num % i == 0 { return false }
            }
        }
        return true
    }
    
    var answer = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                if getPrimeNum(nums[i]+nums[j]+nums[k]) {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}