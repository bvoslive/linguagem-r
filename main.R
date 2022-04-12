# INSTALANDO BIBLIOTECAS
install.packages('dplyr')
install.packages('psych')

# IMPORTANDO BIBLIOTECAS
(require('dplyr'))
library('dplyr')
library('car')
library('psych')

setwd('D:/Codes/git-r-language')

df = read.csv('google_books_1299.csv')

View(df)

glimpse(df)

# -----> AJUSTANDO VARIÁVEIS <-----


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

# ESTATÍSTICAS DESCRITIVAS
summary(df$rating)

# ESTATÍSTICA DESCRITIVA
describe(df$price)
describeBy(df$price, group=df$generes)

# AGRUPANDO DADOS
# necessário o dplyr


# AGRUPANDO POR PUBLISHER
tabela <- df %>% group_by(publisher) %>% summarize(soma = sum(price), média = mean(price))



# ------> ESTATÍSTICA <------

# TESTE-T


shapiro.test(df$rating)
# aceita-se a hipótese alternativa
# os dados não tem distribuição normal


# É MAIOR QUE 4.4
t.test(df$rating, alternative='greater', mu=4.4)









