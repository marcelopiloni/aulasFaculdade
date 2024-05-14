# -*- coding: utf-8 -*-
"""matriz.ipynb

"""

import numpy as np

# Definindo duas matrizes
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Adição de matrizes
C = A + B
print("Resultado da Adição:")
print(C)

# Subtração de matrizes
C = A - B
print("Resultado da Subtração:")
print(C)

# Multiplicação por escalar
k = 2
B = k * A
print("Resultado da Multiplicação por Escalar:")
print(B)

# Multiplicação de matrizes
C = np.dot(A, B)
print("Resultado da Multiplicação de Matrizes:")
print(C)

# Transposta da matriz
A_transposta = np.transpose(A)
print("Matriz Transposta:")
print(A_transposta)

# Calculando o determinante
det_A = np.linalg.det(A)
print("Determinante da Matriz A:", det_A)

# Criando uma matriz identidade de ordem 3
I = np.eye(3)
print("Matriz Identidade:")
print(I)

# Calculando a matriz inversa
A_inv = np.linalg.inv(A)
print("Matriz Inversa de A:")
print(A_inv)
