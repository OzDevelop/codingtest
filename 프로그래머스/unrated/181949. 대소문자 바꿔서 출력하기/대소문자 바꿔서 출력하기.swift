import Foundation

let s1 = readLine()!
var s2 = ""

for i in s1 {
   if i.asciiValue! > 90 {
       s2 += i.uppercased()
   }  else {
       s2 += i.lowercased()
   }
}
print(s2)