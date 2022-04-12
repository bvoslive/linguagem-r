install.packages('dplyr')


(require('dplyr'))


library('dplyr')
library('car')



df = read.csv()


setwd('D:/Codes/Linguagem R')

df = read.csv('google_books_1299.csv')

View(df)

##### AJUSTANDO VARIÁVEIS #####

# VISUALIZANDO
View(df)

# CONTANDO GÊNEROS ÚNICOS
View(table(df$generes))

# SUBSTITUINDO VALORES
df$currency = factor(df$currency, label = c('Pago', 'Grátis'), levels = c('SAR', 'Free'))


#FILTRANDO DADOS PELO GÊNERO
View(filter(df, generes=='none'))




df$generes

