import pandas as pd

# Read The CSV File
print("Reading CSV File...")
df = pd.read_csv('data/data.csv')

print("\n=== CSV Data Preview...")
print(df.head())

print("\n=== Statistical Summary ===")
print(df.describe())

print("\n=== Data info ===")
print(df.info())

print("\n Data Processing Complete!")
