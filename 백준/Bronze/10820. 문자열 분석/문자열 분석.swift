import Foundation

while let input = readLine() {
    var small = 0
    var capital = 0
    var num = 0
    var space = 0
    var line = Array(input)
    
    for i in line {
        if i >= "A" && i <= "Z" {
            capital += 1
        } else if i >= "a" && i <= "z" {
            small += 1
        } else if i == " " {
            space += 1
        } else {
            num += 1
        }
//        print(i)
    }
    print("\(small) \(capital) \(num) \(space)")
}
