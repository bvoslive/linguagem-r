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

# -----> AJUSTANDO VARI�VEIS <-----


# SUBSTITUINDO VALORES
df$currency = factor(df$currency, label = c('Pago', 'Gr�tis'), levels = c('SAR', 'Free'))


# FILTRANDO DADOS PELO G�NERO
View(filter(df, generes=='none'))


# SUBSTITUINDO "NONE" POR VALORES NULOS
df$generes = factor(df$generes, label = c(NA), levels = c('none'))



# -----> MANIPULA��O DE DADOS <-----


# VISUALIZANDO
View(df)

# CONTANDO G�NEROS �NICOS
View(table(df$generes))

# VISUALIZAR FREQU�NCIA RELATIVA
View(prop.table(table(df$generes)))

# TAMB�M � POSS�VEL VISUALIZAR COM MAIS DE UMA COLUNA
View(prop.table(table(df$generes)))

# AMPLITUDE DOS DADOS
range(df$price)


# QUANTIDADE DE CAT ADEQUADAS
nclass.Sturges(df$price)


View(df$pricing)

# CONTAGEM POR FAIXAS
table(cut(df$rating, seq(0, 5, 1)))

# ESTAT�STICAS DESCRITIVAS
summary(df$rating)

# ESTAT�STICA DESCRITIVA
describe(df$price)
describeBy(df$price, group=df$generes)

# AGRUPANDO DADOS
# necess�rio o dplyr


# AGRUPANDO POR PUBLISHER
tabela <- df %>% group_by(publisher) %>% summarize(soma = sum(price), m�dia = mean(price))



# ------> ESTAT�STICA <------

# TESTE-T


shapiro.test(df$rating)
# aceita-se a hip�tese alternativa
# os dados n�o tem distribui��o normal


# � MAIOR QUE 4.4
t.test(df$rating, alternative='greater', mu=4.4)









