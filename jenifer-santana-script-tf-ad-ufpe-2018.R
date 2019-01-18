#Trabalho Final An�lise de Dados - Jenifer Santana
#instalando pacotes
install.packages("openxlsx")
library(openxlsx)
require(openxlsx)
#verificando diret�rio
getwd()
library("readxl")
require(readxl)
library("tidyverse")
#Carregando banco de dados
Demo_Desenveco <- read_excel("Demo_Desenveco.xlsx")
#estat�stica descritiva do banco de dados
summary(Demo_Desenveco)
dim(Demo_Desenveco)
#estat�stica descritiva da vari�vel dependente
summary(Demo_Desenveco$gdppc)
var(Demo_Desenveco$gdppc)
sd(Demo_Desenveco$gdppc)
#estat�stica descritiva da vari�vel independente
summary(Demo_Desenveco$democracy)
var(Demo_Desenveco$democracy)
sd(Demo_Desenveco$democracy)
#An�lise de regress�o linear
reg = lm(gdppc ~ democracy, data = Demo_Desenveco)
summary(reg)
#verificando a diferen�a da distribui��o dos valores de gdppc 
#para cada categoria de democracy
#sendo distribui��o normal
t.test(gdppc ~ democracy, data = Demo_Desenveco)
#sem distribui��o normal
library(stats)
wilcox.test(gdppc ~ democracy, data = Demo_Desenveco)
#verificando homocedasticidade
install.packages(lmtest)
library(lmtest)
bptest (gdppc ~ democracy, data = Demo_Desenveco)

