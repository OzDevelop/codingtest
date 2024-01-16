func solution(_ phone_number:String) -> String {
    var answer = ""
    for (index, char) in phone_number.enumerated() {
        if index < phone_number.count - 4 {
            answer.append("*")
        } else {
            answer.append(char)
        }
    }
    return answer
}