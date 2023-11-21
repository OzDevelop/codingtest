import Foundation

func solution(_ order:[String]) -> Int {
    var ans = 0
    for i in order {
        switch i {
        case "iceamericano", "americanoice", "hotamericano", "americanohot", "americano", "anything":
            ans += 4500
        case "icecafelatte", "cafelatteice", "hotcafelatte", "cafelattehot", "cafelatte":
            ans += 5000
        default:
            break
        }
    }
    return ans
}