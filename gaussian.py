import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

mean =1000
std=5

x=np.linspace(mean-3*std,mean+3*std,1000)
y=norm(loc=mean,scale=std).pdf(x)

plt.plot(x,y,c="blue")
plt.axvline(mean,ls="--",color="gray")
plt.show()






