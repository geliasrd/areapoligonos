# Calculando Área de Polígonos

## Descrição

Um polígono com N vertices ((x1;y1)...(xn;yn))

As coordenadas dos vertices devem ser lidas através de um arquivo .txt. Onde na primeira linha temos a quantidade de vertices, e nas outras, os valores das coordenadas de x e y respetivamente.

A área do polígono é dada pela expressão:
A = (1/2) * MOD(x1*y2 - x2*y1 + x2*y3 - x3*y2 + ... + xn*y(n-1) - x1yn)

