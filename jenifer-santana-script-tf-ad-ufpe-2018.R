#Trabalho Final Análise de Dados - Jenifer Santana
#instalando pacotes
install.packages("openxlsx")
library(openxlsx)
require(openxlsx)
#verificando diretório
getwd()
library("readxl")
require(readxl)
library("tidyverse")
#Carregando banco de dados
Demo_Desenveco <- read_excel("Demo_Desenveco.xlsx")
#estatística descritiva do banco de dados
summary(Demo_Desenveco)
dim(Demo_Desenveco)
#estatística descritiva da variável dependente
summary(Demo_Desenveco$gdppc)
var(Demo_Desenveco$gdppc)
sd(Demo_Desenveco$gdppc)
#estatística descritiva da variável independente
summary(Demo_Desenveco$democracy)
var(Demo_Desenveco$democracy)
sd(Demo_Desenveco$democracy)
#Análise de regressão linear
reg = lm(gdppc ~ democracy, data = Demo_Desenveco)
summary(reg)
#verificando a diferença da distribuição dos valores de gdppc 
#para cada categoria de democracy
#sendo distribuição normal
t.test(gdppc ~ democracy, data = Demo_Desenveco)
#sem distribuição normal
library(stats)
wilcox.test(gdppc ~ democracy, data = Demo_Desenveco)
#verificando homocedasticidade
install.packages(lmtest)
library(lmtest)
bptest (gdppc ~ democracy, data = Demo_Desenveco)


