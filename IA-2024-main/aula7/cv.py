# -*- coding: utf-8 -*-
"""cv.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1o2eYvb4bnHx7QxVIxAgtO9Ver0y_yUm5
"""

import pandas as pd
from sklearn.model_selection import (
    cross_val_score,
    KFold,
    cross_validate)
from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import (
    LabelEncoder,
    StandardScaler
)
from sklearn.pipeline import Pipeline

# Carregar a base
df = pd.read_excel('/content/renal.xlsx')
df.head(5)

# Informações
df.info()

# Verificar NaN
df.isna().sum().sort_values(ascending = False)

# Deletar ID
df.drop('id', axis = 1, inplace = True)

# Alterar o tipo dos dados
cols = ['vcc', 'cgb', 'cgv']

for col in cols:
  df[col] = pd.to_numeric(df[col], errors = 'coerce')

# Informações
df.info()

# Selecionar as numéricas
colunas_numericas = df.select_dtypes(include = ['int', 'float']).columns
colunas_numericas

# Substituir NaN pela mediana
df.fillna(df.median(numeric_only = True), inplace = True)

df.isna().sum()

# Estatísticas descritivas
df.describe().T.round(2)

# Criar X e y
X = df.iloc[:,: -1] # seleciona todas as colunas, menos a última
y = df.iloc[:, -1] # seleciona apenas a última

# Codificar o alvo
le = LabelEncoder()
y = le.fit_transform(y)

# Armazenar os valores da classe
labels = list(le.classes_)
labels

# Treinar
# Criar um objeto KFold para a validação cruzada
kf = KFold(n_splits= 4,
           shuffle= True,
           random_state=42)

# Inicializar o modelo
modelo = RandomForestClassifier(random_state=42)

# Criar um pipeline com o StandarScaler e o modelo
pipeline = Pipeline([
    ('scaler', StandardScaler()),
    ('modelo', modelo)
])

# Realizar a validação cruzada
scores = cross_val_score(pipeline, X,
                         y, cv = kf,
                         scoring = 'accuracy')

# Verificar as médias das acurácias
scores

# Calcular a média das pontuações da validação cruzada
media_acuracia = scores.mean() * 100
desvio_padrao = (scores.std()).round(3)
print(f'Média da Acurácia: {media_acuracia:.2f} (+/-{desvio_padrao})')