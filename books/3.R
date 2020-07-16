install.packages("tidyverse") #metalibreria
install.packages("readxl") #especifica para leer de archivos de excel
library(tidyverse) #cargan la libreria
library(readxl) # lee archivos de excel
## Tibbles = data frame

resultados <- read_csv("Descargas/datos/Saber_11__2000-1.csv")
View(Saber_11_2000_1)

ejemplo_excel <- read_excel("Descargas/datos/SampleData.xlsx", 
                         sheet = "SalesOrders")

ejemplo_txt <- read_delim("Descargas/datos/SB11_20181.TXT", 
                         ";", escape_double = FALSE, trim_ws = TRUE)

SampleData <- read_excel("Descargas/datos/SampleData.xlsx", sheet = "SalesOrders")

archivo_csv <- read_delim("Descargas/datos/data.tsv", 
                   "\t", escape_double = FALSE, trim_ws = TRUE)

#manipulacion de datos
resultados
names(resultados)
class(resultados)
typeof(resultados)
str(resultados)
## seleccionar columnas
resultos_bio_mat<-data.frame(resultados$PUNT_MATEMATICAS, resultados$PUNT_BIOLOGIA,
                             resultados$PUNT_FILOSOFIA)
#operacion con columnas
resultados$PUNT_FISICA = resultados$PUNT_FISICA/100

#operacion entre columnas

resultados$Multiplicacion <- resultados$PUNT_BIOLOGIA * resultados$PUNT_FISICA

names(resultados)
resultados$Multiplicacion

## transformacion de columnas
as.numeric()
as.character(resultados$PUNT_MATEMATICAS)

### Operador de concatenacion %>%

resultados %>% group_by(ESTU_GENERO) %>% summarise(mean(PUNT_IDIOMA))

### 

resultados %>% select(COLE_JORNADA, COLE_VALOR_PENSION)

unique(resultados$COLE_JORNADA)

resultados %>% filter(ESTU_GENERO == 'M')

#renombrar columnas 

resultados <- resultados %>% rename(ID = ESTU_CONSECUTIVO)
View(resultados)
resultados %>% rename(CODIGO = COLE_COD_ICFES)


###

resultados %>% group_by(ESTU_GENERO, COLE_JORNADA) %>% summarise(mean(PUNT_GEOGRAFIA))

head(resultados)

names(resultados)
dim(resultados)
dim(resultados_mujeres)

###

summary(resultados)
head(resultados, n=10)
tail(resultados, n=7)
## NA
is.na(resultados)
colSums(is.na(resultados))

resultados <- na.omit(resultados)
colSums(is.na(resultados))


if (resultados$PUNT_BIOLOGIA == 40){
  resultos$PUNT_BIOLOGIA = NULL
}
 
write_excel_csv(resultados, path = 'resultados.csv') # csv excel
write_csv(resultados, path = 'resultados1.csv')
write_tsv(resultados, path = 'resultados2.csv')


 