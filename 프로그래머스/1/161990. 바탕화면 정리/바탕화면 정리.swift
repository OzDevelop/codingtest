import Foundation

func solution(_ wallpaper:[String]) -> [Int] {

    var tmpX: [Int] = []
    var tmpY: [Int] = []
        
    for i in wallpaper.enumerated() {
        if i.element.contains("#") {
            tmpX.append(i.offset)
        }
        for j in i.element.enumerated() {
            if j.element == "#" {
                tmpY.append(j.offset)
            }
        }
    }
    return [tmpX.first!, tmpY.min()!, tmpX.last! + 1, tmpY.max()! + 1]
}