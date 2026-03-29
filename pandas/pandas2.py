#filtering and ordering
import pandas as pd 
df=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\world_population.csv")
#print(df[df['Rank']<10]) 
#specific_countrie=['Bangladesh','Brazil']
#print(df[df['Country'].isin(specific_countrie)]) #will print specific country only from table using .isin
#print(df[df['Country'].str.contains('United')]) #here searching by a string can be a no. also in '' , also capital letters do make a difference
df2=df.set_index('Country')
#method to filter
df2.filter(items=['CCA3'])
df2.filter(like='United')
df2.loc['India'] #searching by string location
df2.iloc[3]#searching by integer location

#ordering 
#print(df[df['Rank']<10].sort_values(by='Rank',ascending=False))
#print(df[df['Rank']<10].sort_values(by=['Continent','Country'],ascending=False)) # to sort by myltiple columns 

