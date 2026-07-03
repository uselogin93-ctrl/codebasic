a= 3+4j
print(a)
print(type(a))

a=25
a="Raj"
print(a)

print(11/2)
print(11%2)
print(11//2)   

a= range(1,20)
print(a)
b= list(range(1,20))
print(b)
c= tuple(list(range(1,20)))
print(c)
print(type(c))

# a=20
# b=list(print(range(1,20)))
# print(b)

x=[1,2,'Raj','Veer']
y=list(range(len(x))) 
print(y)

# x=20
# y=list(print(set(range(x,1,-2))))
# print(y)

x=20
if(x+20)-40:
    print("X")
else:
    if"yes":
        print("Y")
    else:
        if 0:
            print("Q")
        else:
            print("N")

if 'Raj':
    print('Y')
else:
    print('X')

x="raj"
if ((len(x))-4):
    print('X')
else:
    print('Y')

X=(1,2,3)
print((2,3)in X)
print(X in (1,2,3))
print(1 in X) 

a = [1,2,(1,"X"), {6,7}]
print((1,'X') in a)
print([1,2] in a)
print((4-2) in a) 

for i in range(5,0,-1):
    for j in range(5,0,-1):
        print(j, end=" ")
    print()
print()

for i in range(5,0,-1):
    for j in range(5,0,-1):
        print(i, end=" ")
    print()
print()

for i in range(5,0,-1):
    for j in range(i,0,-1):
        print(j, end=" ")
    print()
print()

i=25
while i<=27:
    j=5
    while j<=7:
        print("*",end=" ")
        j=j+1
    print()
    i=i+1
print()

a=[1,2,6,2,7,9]
print(id(a))
b=a
for i in range(len(b),0,-1):
    print(b[i-1],end=" ")  
print(a)

a.sort(reverse=True)
print(a)
print(id(a))

a={"dad":45,"mom":40,"me":20}
b=a.keys()
c=a.values()
print(b)
print(c)
print(type(b))
print(type(c))
print(zip(b,c))
print(List(zip(b,c)))



