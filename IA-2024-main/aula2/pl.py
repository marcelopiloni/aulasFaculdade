# -*- coding: utf-8 -*-
"""PL.ipynb

"""

!pip install pulp

from pulp import LpMaximize, LpProblem, LpVariable

"""# Exemplo"""

# Criação do problema de maximização
problema = LpProblem(name="maximizar_Z", sense=LpMaximize)

# Criação das variáveis de decisão
x1 = LpVariable("Produto1", lowBound=0, cat="Integer")
x2 = LpVariable("Produto2", lowBound=0, cat="Integer")

# Adicionando a função objetivo
problema += 3 * x1 + 2 * x2, "Z"

# Adicionando as restrições
problema += 2 * x1 + x2 <= 20, "restricao1"
problema += 4 * x1 - 5 * x2 >= -10, "restricao2"

# Resolvendo o problema
problema.solve()

# Imprime os resultados
print("Status:", problema.status)
print("Número de lotes do Produto 1:", int(x1.varValue))
print("Número de lotes do Produto 2:", int(x2.varValue))
print("Lucro total máximo:", int(problema.objective.value()))

"""# Exercício 1"""

# Criar problema de programação linear
problema = LpProblem("Maximizar_Lucro", LpMaximize)

# Variáveis de decisão (número de lotes do Produto 1 e Produto 2)
x1 = LpVariable("Produto1", lowBound=0, cat="Integer")
x2 = LpVariable("Produto2", lowBound=0, cat="Integer")

# Função objetivo: Maximizar o lucro total
problema += 3000 * x1 + 5000 * x2, "Maximizar_Lucro"

# Restrições de disponibilidade de horas em cada fábrica
problema += 1 * x1 <= 4, "Fábrica1"
problema += 2 * x2 <= 12, "Fábrica2"
problema += 3 * x1 + 2 * x2 <= 18, "Fábrica3"

# Resolve o problema de programação linear
problema.solve()

# Imprime os resultados
print("Status:", problema.status)
print("Número de lotes do Produto 1:", int(x1.varValue))
print("Número de lotes do Produto 2:", int(x2.varValue))
print("Lucro total máximo:", int(problema.objective.value()))

"""# Exercício 2"""

# Criar problema de programação linear
problema = LpProblem("Maximizar_Lucro", LpMaximize)

# Variáveis de decisão (número de lotes do Produto 1 e Produto 2)
x1 = LpVariable("Básico", lowBound=0, cat="Integer")
x2 = LpVariable("Luxo", lowBound=0, cat="Integer")

# Função objetivo: Maximizar o lucro total
problema += 1000 * x1 + 1800 * x2, "Maximizar_Lucro"

# Restrições de disponibilidade de tempo e demanda
problema += 20 * x1+ 30 * x2 <= 1200, "Tempo"
problema += x1 <= 40, "Demanda Básico"
problema += x2 <= 30, "Demanda Luxo"

# Resolve o problema de programação linear
problema.solve()

# Imprime os resultados
print("Status:", problema.status)
print("Número de lotes do Produto 1:", int(x1.varValue))
print("Número de lotes do Produto 2:", int(x2.varValue))
print("Lucro total máximo:", int(problema.objective.value()))

"""# Exercício 3"""

# Criar problema de programação linear
problema = LpProblem("Maximizar_Lucro", LpMaximize)

# Variáveis de decisão (número de lotes do Produto 1 e Produto 2)
x1 = LpVariable("P1", lowBound=0, cat="Integer")
x2 = LpVariable("P2", lowBound=0, cat="Integer")

# Função objetivo: Maximizar o lucro total
problema += 110 * x1 + 65 * x2, "Maximizar_Lucro"

# Restrições de disponibilidade de tempo e demanda
problema += 5 * x1 + 7 * x2 <= 30, "Tempo"
problema += 2* x1 + 1* x2 <= 7, "Estoque"

# Resolve o problema de programação linear
problema.solve()

# Imprime os resultados
print("Status:", problema.status)
print("Número de lotes do Produto 1:", int(x1.varValue))
print("Número de lotes do Produto 2:", int(x2.varValue))
print("Lucro total máximo:", int(problema.objective.value()))
