install.packages('dplyr')


(require('dplyr'))


library('dplyr')
library('car')



df = read.csv()


setwd('D:/Codes/Linguagem R')

df = read.csv('google_books_1299.csv')

View(df)

##### AJUSTANDO VARI�VEIS #####

# VISUALIZANDO
View(df)

# CONTANDO G�NEROS �NICOS
View(table(df$generes))

# SUBSTITUINDO VALORES
df$currency = factor(df$currency, label = c('Pago', 'Gr�tis'), levels = c('SAR', 'Free'))


#FILTRANDO DADOS PELO G�NERO
View(filter(df, generes=='none'))




df$generes

