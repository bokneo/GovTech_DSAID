import pandas as pd
import numpy as np
import re
from nameparser import HumanName

df1 = pd.read_csv('Dataset\dataset1.csv')

df2 = pd.read_csv('Dataset\dataset2.csv')

def nameless(df):
    return df.dropna(subset = ['name'])

def split_first_last(df):
    df['first_name'] = np.nan
    df['last_name'] = np.nan
    for i, row in df.iterrows():
        parsed_name = HumanName(df.loc[i, 'name'])
        f_name = parsed_name.first
        l_name = parsed_name.last
        df.loc[i, 'first_name'] = f_name
        df.loc[i, 'last_name'] = l_name
    return df.drop('name', axis = 'columns')
        
def prepended_zero(df):
    for i, row in df.iterrows():
        df.loc[i, 'price'] = float(re.sub(r'(.+)', r'\1', str(row.price)))
    return df

def above_100(df):
    df['above_100'] = True
    df.loc[df['price'] <= 100, 'above_100'] = False
    return df

data = [df1, df2]
count = 1

for i in data:
    i = nameless(i)
    i = split_first_last(i)
    i = prepended_zero(i)
    i = above_100(i)
    i = i[['first_name', 'last_name', 'price', 'above_100']]
    name = 'Dataset\processed_df' + str(count) + '.csv'
    i.to_csv(name)
    count += 1