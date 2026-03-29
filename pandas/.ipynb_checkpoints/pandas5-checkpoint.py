# JOIN , MERGE , CONCATENATE
import pandas as pd
#MERGE
df1=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\LOTR.csv")
df2=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\LOTR 2.csv")
df1.merge(df2,how='inner') #common data in both df(joins)
df1.merge(df2,how='outer') #combine both df
df1.merge(df2,how='left') #will print all elements of left and common element of both df
df1.merge(df2,how='right') #will print all elements of right and common element of both df

#JOIN
#https://youtu.be/PSNXoAs2FtQ?si=wA2utL5LerQq4I0i&t=54405

#CONCATENATE - Just put 1 df on top of another df
#a=pd.concat([df1,df2])
a=pd.concat([df1,df2],join='outer')
print(a)