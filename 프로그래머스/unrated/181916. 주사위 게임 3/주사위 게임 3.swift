
import Foundation

//func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
//    let resultArr = [a, b, c, d]
//    var result = 0
//    
//    for i in 0..<resultArr.count {
//        let countedNum = NSCountedSet(array: resultArr).count(for: resultArr[i])
//        let p = resultArr[i]
//        print(countedNum)
//        var q: Int {
//            if resultArr.filter({ $0 != p}).count >= 1 {
//                return resultArr.filter { $0 != p}[0]
//            }
//            return 0
//        }
//        var r: Int {
//            if resultArr.filter({ $0 != p}).count >= 2 {
//                return resultArr.filter { $0 != p}[1]
//            }
//            return 0
//        }
//        if countedNum == 4 {
//            result = 1111 * p
//            print("4에서 \(result)")
//            continue
//
//        } else if countedNum == 3 {
//            result = Int(pow(Double(10 * p + q), 2))
//            print("3에서 \(result)")
//            continue
//            
//        } else if countedNum == 2 {
//            if p != q &&  q == r {
//                result = (p + q) * abs(p - q)
//                print("2-1에서 \(result)")
//                break
//            } else if countedNum == 2 && q != r {
//                result = q * r
//                print("2-2에서 \(result)")
//                break
//            }
//            continue
//        } else if countedNum == 1 {
//            result = resultArr.min() ?? 0
//            print("1에서 \(result)")
//            continue
//        }
//    }
//    return result
//}

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let nums = [a, b, c, d]
        
    if Set(nums).count == 4 {
        return nums.min() ?? 0
    }
    
    var count = [Int: Int]()
    
    for num in nums {
        count[num] = (count[num] ?? 0) + 1
    }
    
    if Set(nums).count == 1 {
        return nums.first! * 1111
    } else if Set(nums).count == 2 {
        if count.values.contains(3) {
            let p = count.first { $0.value == 3 }!.key
            let q = nums.first { $0 != p }!
            return (10 * p + q) * (10 * p + q)
        } else {
            let p = count.keys.first!
            let q = count.keys.dropFirst().first!
            return (p + q) * abs(p - q)
        }
    } else {
        let p = count.first { $0.value == 2 }!.key
        let q = nums.first { $0 != p }!
        let r = nums.first { $0 != p && $0 != q }!
        return q * r
    }
}
