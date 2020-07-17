library(tidyverse)
theme_set(theme_grey())

covid <- read_csv("Descargas/datos/covid_CO.csv")
covid$Edad <- as.integer(covid$Edad)

max(covid$Edad)
# aes  aesthetic
# Genera secuencia de numeros 
ggplot(covid, aes(x=Edad))+geom_histogram(binwidth = 10, color='gray', fill = "blue")+
  scale_x_continuous(breaks =seq(0,106,10))  

ggplot(covid, aes(x=0, y=Edad)) + geom_boxplot()

ggplot(covid, aes(x=Edad))+geom_histogram(binwidth = 10, fill = 'blue', color='white')+
  scale_x_continuous(breaks = seq(0,100,10)) + facet_wrap(~Sexo)

ggplot(covid, aes(x=Edad, color = Sexo))+geom_histogram(binwidth = 10, position = 'identity', alpha = 0.5, fill = 'white')+
  scale_x_continuous(breaks = seq(0,100,10))

unique(covid$Sexo)
covid$Sexo <- toupper(covid$Sexo)


# por pais de procedencia
por_pais <- covid %>% group_by(`País de procedencia`) %>% tally(sort = TRUE)
por_pais = por_pais[-1,]
ggplot(head(por_pais, n=10), aes(x=`País de procedencia`, y=n)) + geom_bar(stat = "identity") + 
  theme(axis.text.x = element_text(angle = 90))

#contagiados por sexo 
por_sexo <- covid %>% group_by(Sexo) %>% tally(sort = TRUE)
ggplot(por_sexo, aes(x=Sexo, y=n)) + geom_bar(stat = "identity") + 
  theme(axis.text.x = element_text(angle = 90))

#contagios por dia
#fecha de diagnostico
por_dia <- covid %>% group_by(`Fecha diagnostico`) %>% tally()
por_dia$acumulado <- cumsum(por_dia$n)
ggplot(por_dia, aes(x=`Fecha diagnostico`, y=n)) + geom_point() 
ggplot(por_dia, aes(x=`Fecha diagnostico`, y=acumulado)) + geom_point() + geom_line()


#contagios por departamento

por_departmento <- covid %>% group_by(`Departamento o Distrito`) %>% tally(sort=TRUE)

ggplot(head(por_departmento, n=15), aes(x=`Departamento o Distrito`, y=n)) + geom_bar(stat = 'identity') +
   labs(title = 'Departamentos con mas casos', x='Departamento', y="# de Casos" ) + theme(axis.text.x = element_text(angle = 90))

