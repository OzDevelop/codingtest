numnum = int(input())
num = int(input())
sum = 0
temp =num
for i in range(numnum-1, 0,-1):
    sum += temp // (10**i)
    temp = temp % (10**i)
sum += temp
print(sum)


        
