import pandas as pd
import numpy as np
import re
from nameparser import HumanName

df1 = pd.read_csv('Dataset\dataset1.csv')

df2 = pd.read_csv('Dataset\dataset2.csv')

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
        
'''def prepended_zero(df):
    for i, row in df.iterrows():
        df.loc[i, 'price'] = float(re.sub(r'(.+)', r'\1', str(row.price)))
    return df
'''

def nameless(df):
    return df.dropna(subset = ['name'])

