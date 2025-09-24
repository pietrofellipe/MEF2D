import numpy as np


n = 1000
i = 32
amper_espira = n*i
print(amper_espira)
area = 0.01
j = n*i/area
print(f"Valor da densidade de corrente {j}")

mu0 = 4*np.pi*1e-7
print(f"valor de mu0: {mu0}")

h_gap = amper_espira/0.04
print(f"Valor do H no gap (0.25,-0.01): {h_gap}")

b_gap = h_gap*mu0
print(f"Valor do B no gap (0.25,-0.01): {b_gap}")
