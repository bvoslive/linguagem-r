# INSTALANDO BIBLIOTECAS
install.packages('dplyr')

# IMPORTANDO BIBLIOTECAS
(require('dplyr'))
library('dplyr')
library('car')



setwd('D:/Codes/Linguagem R')

df = read.csv('google_books_1299.csv')

View(df)

glimpse(df)

##### AJUSTANDO VARIÁVEIS #####




# SUBSTITUINDO VALORES
df$currency = factor(df$currency, label = c('Pago', 'Grátis'), levels = c('SAR', 'Free'))


# FILTRANDO DADOS PELO GÊNERO
View(filter(df, generes=='none'))


# SUBSTITUINDO "NONE" POR VALORES NULOS
df$generes = factor(df$generes, label = c(NA), levels = c('none'))




# -----> MANIPULAÇÃO DE DADOS <-----



# VISUALIZANDO
View(df)

# CONTANDO GÊNEROS ÚNICOS
View(table(df$generes))

# VISUALIZAR FREQUÊNCIA RELATIVA
View(prop.table(table(df$generes)))

# TAMBÉM É POSSÍVEL VISUALIZAR COM MAIS DE UMA COLUNA
View(prop.table(table(df$generes)))

# AMPLITUDE DOS DADOS
range(df$price)


# QUANTIDADE DE CAT ADEQUADAS
nclass.Sturges(df$price)



View(df$pricing)

# CONTAGEM POR FAIXAS
table(cut(df$rating, seq(0, 5, 1)))







# ------> ESTATÍSTICA <------

# TESTE-T


shapiro.test(df$rating)
# aceita-se a hipótese alternativa
# os dados não tem distribuição normal



# É MAIOR QUE 4.4
t.test(df$rating, alternative='greater', mu=4.4)


# ESTATÍSTICA DESCRITIVA




