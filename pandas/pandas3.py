#indexing in pandas
import pandas as pd
df=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\world_population.csv")
#df=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\world_population.csv",index_col='Country')
#or
#df.set_index('Country')
#only this will not save the index to save ,inplace=true
#df.set_index('Country',inplace=True)
df.reset_index(inplace=True)
df.set_index(['Country','Continent'],inplace=True) # this will create 2 indexes
df.sort_index()
print(df)
