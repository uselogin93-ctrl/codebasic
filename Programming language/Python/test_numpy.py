import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

arr = np.array([1, 2, 3])
print(arr)

df = pd.read_csv("Dataset - Dataset.csv")
df = pd.read_excel("Dataset.xlsx")
print(df.head())

x = np.linspace(0, 10, 100)
y = np.sin(x)
plt.plot(x, y)
plt.show()