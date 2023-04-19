    import Foundation

    let input = Array(readLine()!)
    var cnt = 1
    for i in input {
        if i == " " {
            cnt += 1
        }
    }
if input[0] == " " {
    cnt -= 1
}
if input.last == " "{
    cnt -= 1
}
    print(cnt)
