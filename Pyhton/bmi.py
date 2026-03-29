user=0
while(user!=1):
    weight=float(input("enter your weight in kg"))
    height=float(input("enter your height in m"))

    BMI=weight/(height*height)

    print("your BMI is"+str(BMI))

    if(BMI<16):
        print("you are thin")
    elif(BMI>16 or BMI<18.5):
        print("you are a bit normal")
    elif(BMI>18.5 or BMI<25):
        print("you are 100% normal")
    else:
        print("you are overweight")
       
    user=int(input("enter 1 to exit"))