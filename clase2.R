#estructura de datos (secuencia) unidimensional que contiene el mismo tipo de variable
#logicos, enteros, double, caracter
#longitud un vector length

a<-c(1,2,3)
b<-c(4,5,6)
length(a)
b<-c(1, "Generico")
b
class(a)
a%%b
vector("numeric", 5)
numeric(5)
seq.int(1,10,2)

y<-5:-5

typeof(a)

x<- 2:10
x
a
a[c(2,3)]
a[-1]
a[a>2]

a+x

#acceso a elementos de un vector
vec1 <- c('primer_e'=1, 'segundo_e'=2, 'tercer_e'=3)
vec1
vec1['segundo_e'] = 10
vec1
vec1[vec1<=4] = 1
vec1


###

vec2=seq(1,10,0.1)
vec2[5:10]
vec_nombres <- c('Maria', 'Ines', 'Gustavo')
vec_nombres[1:3]


vec2 <- NULL
vec2[4]

test <- c(2,NA,3)
mean(test, na.rm =TRUE)

## Matrices # objeto de 2 dimensiones 
matriz1 <- rbind(a,b)
matriz2 <- cbind(a,b)

matriz3 <- matrix(1:12, nrow = 6, ncol = 2)
class(matriz1)
#operaciones
matriz1[1,3]

matriz1[c(1,2),1]
#data frames # Una matriz de dos dimensiones 

mi_dataframe <- data.frame(cbind(a, vec_nombres))
str(mi_dataframe)
array(a, matriz1)
mi_dataframe$a = as.numeric(mi_dataframe$a)
mi_dataframe$a*2

mi_dataframe$vec_nombres = tolower(mi_dataframe$vec_nombres)



#### Arreglos
# objetos que pueden contener mas de dos dimensiones

c1 <- c(1,2,3)
c2 <- c(4,5,6)
c3 <- c(7,8,9)
arreglo <- array(c(c1,c2,c3), dim = c(3,3))

cbind(c1,c2)

arreglo[2,3]


# Condicional if-else

if (condition) {
  #haga algo
}

##
if (condition) {
  #haga algo
} else { #haga otra cosa
  
}

## if - else if
if (condition) {  # primera condicion
  
} else if (condition){ #segunda condicion
  
} else { # para todos los demas casos
  
}

# loops / secciones de codigo que se repiten
x <- seq(-pi,pi,0.1)
y <- c()
for (valor in x) {
  #print(i)
  y <- c(y, sin(valor)) ## adjuntar valores al final
}
cbind(x,y)
plot(x,y)

i<-0
while(i<6){
  print(i)
}

#funciones 

soy_una_funcion <- function(){
  print("Hola!, Soy una funcion")
}


combinatoria <- function(n,p){
  if (n<p) {
    return("n debe ser mayor a p")
  } else{
  c = factorial(n)/(factorial(p)*factorial(n-p))
  return(c)
  }
}

combinatoria(1,10)

cuadratica <- function(a,b,c){
  if ((b^2 - 4*a*c) < 0) {
    print("Las raices que esta calculando son complejas")
  } else {
  x1 = (-b+sqrt(b^2 - (4*a*c)))/(2*a)
  x2 = (-b-sqrt(b^2 - (4*a*c)))/(2*a)
  resultado = c(x1,x2)
  cat('Las raices son:', resultado)
  }
}
#Llamando a la funcion
cuadratica(1,-1,-12)


soy_una_funcion()


a <- seq(1,11,2)
b <- seq(10,20,2)

matriz <- cbind(a,b)

matriz
