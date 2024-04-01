import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportedArr: [Int] = Array(repeating: 0, count: id_list.count) // 신고받은 수
    var reportDict: [String : Set<String>] = [:] // 신고당한 정보
    var reportArr: [String] = [] // 정지된 유저
    
    id_list.forEach { id in
        reportDict[id] = []
    }
    
    report.map { $0.split(separator: " ")}.forEach { i in
        let reporter = String(i[0]), reported = String(i[1])
        reportDict[reported]?.insert(reporter)
    }
    
    reportDict.forEach { report in
        if report.value.count >= k {
            reportArr.append(report.key)
        }
    }
    
    reportArr.forEach { k in
        reportDict[k]?.forEach{ id in
            reportedArr[id_list.firstIndex(of: id)!] += 1
        }
    }
    
    return reportedArr
}