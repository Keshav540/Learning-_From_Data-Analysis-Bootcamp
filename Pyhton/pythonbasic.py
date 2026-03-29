"""first_name='keshav'
last_name='sharma'
full_name=first_name+" "+last_name
print(("my name is "+full_name))

age=19
age+=1
print("my age is "+str(age))

human= True
print("are u a human :" +str(human))

#multiple assignment
age,name,year=19,"keshav","2nd year"
print(age)
print(name)
print(year)
"""
#string functions
"""
#name="keshav"
#print(len(name))
#print(name.find("h"))
#print(name.capitalize())
#print(name.lower())
#print(name.isdigit())
#print(name.isalpha())
#print(name.count("e"))
#print(name.replace("h","a"))
#print(name*4)
"""
#inputfunction
"""
#name=input("what is your name?? =")
#age=int(input("what is your age "))
#age+=1
#print("hello "+name+" your new age is "+str(age))
"""
#math functions
"""import math
pi=3.14
print(round(pi))
print(math.ceil(pi))
print(math.floor(pi))
print(math.pow(pi,3))
print(math.sqrt(420))
a=21
b=53
c=4
print(max(a,b,c))
print(min(a,b,c))
"""
#string slicing
#create a substring by extracting a string from another string
#there are two ways indexing[] or slice()   values can be [start:stop:step]
"""name="keshav sharma"
first_name=name[0:6] #or[:6]
last_name=name[7:13] #or[7:]
print(first_name)
print(last_name)
funky_name=name[0:13:2] #this 2 will show every second name including 1st letter 
print(funky_name)
#to reverse a string
revname=name[::-1] #or[0:13:-1]
print(revname)

#in slice we use commas not :
website="https//:google.com"
slice=slice(8,-4)
print(website[slice])
"""
#if statements
"""
age=int(input("enter your age"))
if age>18:
    print("you are an adult")
elif age<18:
    print("you are a child")
    """
#logical operator and or not vagera
"""
temp=int(input("what is the temprature today? "))
if temp>20 and temp<30:
    print("today is a good weather")
elif temp<20 or temp>30:
    print("today is not a good weather")
"""
#loops
#while loops
"""name=""
while len(name)==0:
    name=input("plz enter the name")
print("hello "+name)
"""
#for loop
"""
#for i in range(40,50+1,3):
#    print(i)
#building a countdown
import time
for seconds in range(10,0,-1):
    print(seconds)
    time.sleep(1)
print("merry christmass")
"""
#NESTED LOOPS
"""
rows=int(input("enter the number of rows"))
columns=int(input("enter the number of columns"))
symbol=input("enter the symbol u want to use")

for i in range(rows):
    for j in range(columns):
        print(symbol,end="")     #end use hota hai taaki symbol neeche na jaaye
    print()
"""
#lists= used to store multiple item in a single variable
"""
#food=apple variable
food=["apple","banana","pizza"]
#print(food)
print(food[0])
food[1]="sushi"
print(food[1])
for x in food:
    print(x)
print()
#list functions List_name.function
food.append("ice cream")
food.remove("pizza")
food.insert(0,"daal chawal")
food.pop()
food.sort()
food.clear()
print(food)

#2d lists=list of lists
drink=["juice","daru","wine"]
dinner=["rajma","bhature"]
dessert=["rabdi","jalebi","gulab jamun"]

food=[drink,dinner,dessert]
print(food)
print(food[2])
print(food[2][1])
"""
#tuple=same as list but ordered and unchangable
"""student=("keshav",19,"topper")
print(student.index(19))
print(student.count("topper"))

for x in student:
    print(x)
if "keshav" in student:
    print("keshav is here")
"""
#set = collection which is unordered,unindexed and no duplicate values
"""
utensils={"fork","knife","plate"}
food={"pizza","maggie","coke","knife"}
#utensils.remove("fork")
#utensils.add("tissue")
#utensils.update(food)   #will add all the elements of food in dishes.
#table=utensils.union(food) #will add all the elements of food in dishes but create a new set.
#for x in utensils:
#    print(x)
#print()
#for x in table:
#    print(x)
print(utensils.difference(food))      #set ka a-b wala operation or print(utensils-food)
print(utensils.intersection(food))
"""
#dictionary = a changeable , unoredered collection of key:value pairs , 
# fast because they are hashing , allow us to access a value quickly.
"""
capital={'india':'delhi', 'japan':'tokyo', 'usa':'washington dc'}
print(capital['germany']) #not a safe method
print(capital.get('germany')) #safe method 
print(capital.keys())#only print keys
print(capital.values())#only print values
print(capital.items())#print keys and values
capital.update({'germany':'berlin'})
capital.pop('usa')
for key,values in capital.items():
    print(key,values)
"""

#functions
"""
def hello():
    print("function syntax")
hello()
def arg(name,age):
    print("hello "+name+str(age)+" have a nice day")
arg("keshav",19)
"""
#return statements
"""
def sum(a,b):
    sum=a+b
    return sum
print(sum(2,3))
"""
#keyword argument
"""
def intro(fname,mname,lname):
    print(f"hello my name is {fname} {mname} {lname}")
intro("the","keshav","sharma") #output = hello my name is the keshav sharma
intro("sharma","the","keshav") #output = hello my name is sharma the keshav
intro(lname="sharma",fname="the",mname="keshav") #output = hello my name is the keshav sharma
"""