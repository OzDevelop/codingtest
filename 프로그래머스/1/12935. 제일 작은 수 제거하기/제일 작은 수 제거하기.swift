func solution(_ arr:[Int]) -> [Int] {
    let minArr = arr.min()
    return arr.count == 1 ? [-1] : arr.filter{ $0 != minArr}
}
