import pandas as pd 
#df=pd.read_csv(r"D:\da\PandasYouTubeSeries-main\countries of the world.csv")
#df=pd.read_table(r"D:\da\PandasYouTubeSeries-main\countries of the world.csv",sep=",") #table will print but not in a good format so we will use seprator to seprate, can also use to print txt file
#df=pd.read_json(r"D:\da\PandasYouTubeSeries-main\json_sample.json")
df=pd.read_excel(r"D:\da\PandasYouTubeSeries-main\world_population_excel_workbook.xlsx",sheet_name=1)#sheet_name will only fetch sheet 1 
#print(df)
df.head(10) #will print first 10 rows of table
df.tail(10) #will print last 10 rows of table
df['Rank']#will only print rank column of table
df.loc[224]#will print 224 location and print data 
