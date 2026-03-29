#group by and aggregate function 
import pandas as pd
df=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\Flavors.csv")
#group_by_frame=df.groupby('Base Flavor')
#print(group_by_frame) #this will create its own object 

#now using aggregate function
#group_by_frame=df.groupby('Base Flavor').mean(numeric_only=True) #in jupyter it will work without (numeric_only=True) and it is currently only working on numeric values
#group_by_frame=df.groupby('Base Flavor').count() # will count number of rows
#group_by_frame=df.groupby('Base Flavor').min()
#similarly there are sum max etc 
group_by_frame=df.groupby('Base Flavor').agg({'Flavor Rating':['mean','max','count','sum']}) #performing a bunch of agg func on a single column
print(group_by_frame)
