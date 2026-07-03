print("# Q.1")
for i in range(1,6,+1):
    for j in range(1,6,+1):
        print(j, end=" ")
    print()
print()

print("# Q.2")
for i in range(1,6,+1):
    for j in range(1,6):
        print(i, end=" ")
    print()
print()

print("# Q.3")
for i in range(5,0,-1):
    for j in range(5,0,-1):
        print(j, end=" ")
    print()
print()

print("# Q.4")
for i in range(5,0,-1):
    for j in range(5,0,-1):
        print(i, end=" ")
    print()
print()

print("# Q.5")
for i in range(0,6):
    for j in range(0,i+1):
        print("*", end=" ")         
    print()
print()

print("# Q.6")
for i in range(0,6):
    for j in range(0,6):
        print("*", end=" ")         
    print()
print()

print("# Q.7")
num = 1
for i in range(0,5):
    for j in range(0,5):
        print(num, end=" ")
        num += 1
    print()
print()

print("# Q.8")
num = "A"
for i in range(0,5):
    for j in range(0,5):
        print(num, end=" ")
        num = chr(ord(num) + 1)
    print()
print()

print("# Q.9")
for i in range(0,5):
    num = "A"
    for j in range(0,5):
        print(num, end=" ")
        num = chr(ord(num) + 1)
    print()
print()

print("# Q.10")
for i in range(0,5):
    num = "E"
    for j in range(0,5):
        print(num, end=" ")
        num = chr(ord(num) - 1)
    print()
print()

print("# Q.11")
for i in range(0,5):
    char = chr(ord("A") + i)
    for j in range(0,5):
        print(char, end=" ")
    print()
print()

print("# Q.12")
for i in range(0,5):
    num = "E"
    for j in range(0,5):
        print(num, end=" ")
        num = chr(ord(num) - 1)
    print()
print()

print("# Q.13")
for i in range(0,5):
    char = chr(ord("E") - i)
    for j in range(0,5):
        print(char, end=" ")
    print()
print()

print("# Q.14")
for i in range(1, 6):
    for j in range(1, i + 1):
        print(j, end=" ")
    print()
print()

print("# Q.15")
for i in range(5, 0,-1):
    for j in range(5, i-1,-1):
        print(j, end=" ")
    print()
print()

print("# Q.16")
for i in range(1, 6):
    for j in range(0, i):
        print(i, end=" ")
    print()
print()

print("# Q.17")
for i in range(5, 0,-1):
    for j in range(5, i-1,-1):
        print(i, end=" ")
    print()
print()

print("# Q.18")
for i in range(1, 6):
    c = "A"
    for j in range(1, i + 1):
        print(c, end=" ")
        c = chr(ord(c) + 1)
    print()
print()

print("# 19")
for i in range(1, 6):
    c = "E"
    for j in range(1, i + 1):
        print(c, end=" ")
        c = chr(ord(c) - 1)
    print()
print()

print("# 20")
for i in range(6,1,-1):
    for j in range(1, i):
        print(j, end=" ")
    print()
print()

print("# 21")
for i in range(0, 5):
    for j in range(5, i, -1):
        print(j, end=" ")
    print()
print()

print("# 22")
for i in range(0, 5):
    c="A"
    for j in range(5, i, -1):
        print(c, end=" ")
        c = chr(ord(c) + 1)
    print()
print()

print("# 23")
for i in range(0, 5):
    char = chr(ord("E") - i)
    for j in range(5, i, -1):
        print(char, end=" ")
    print()
print()

print("# 24")
for i in range(1,6):
    for j in range(i,0,-1):
        print(j, end=" ")
    print()
print()

print("# 25")
for i in range(0,5):
    char = chr(ord("A") + i)
    for j in range(i,5):
        print(char, end=" ")
        char = chr(ord(char) + 1)
    print()
print()


print("# 26")
for i in range(5,0,-1):
    for j in range(i,0,-1):
        print(j, end=" ")
    print()
print()

print("# 27")
for i in range(1,6):
    for j in range(i,6):
        print(j, end=" ")
    print()
print()

print("# 28")
char = chr(ord("A"))
for i in range(0,5):
    for j in range(0,5):
        print(char, end=" ")
        char = chr(ord(char) + 1)
    print()
print()

print("# 29")
for i in range(1,6):
    char="A"
    if i % 2 == 0:  
        char=char.lower()
    else:            
        char=char.upper()
    for j in range(1,6):
        print(char, end=" ")
        char = chr(ord(char) + 1)
    print()
print()

print("# 30")
char="A"
for i in range(1,6):
    if i % 2 == 0:  
        char=char.lower()
    else:            
        char=char.upper()
    for j in range(1,6):
        print(char, end=" ")
        char = chr(ord(char) + 1)
    print()
print()

print("# 31")
for i in range(5):
    for j in range(5):
        print((i + j) % 2, end=" ")
    print()
print()