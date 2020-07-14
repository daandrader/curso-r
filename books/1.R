#Operaciones basicas en R
98+2
50-20
50*2
(100+2)/2
#division entera
100%/%3
#Modulo
10%%3
2^3 #Operacion de potenciacion
2**3 #Operacion de potenciacion
sqrt(4) # square root
#Simbolos especiales o palabras reservadas
NA # NOT AVAIBLE / NO DISPONIBLE
NaN # Not A Number /
Inf # Infinoto
1/0
NULL # NULO # NO SE PUEDE INTERPRETAR
# 
TRUE # 1
FALSE # 0

#Operadores logicos
4>5
4<5
4==5
4 != 5
6<7 & 5<6
6<7 | 7<6
#Tipos de variables
class(4)
class('Hola')
class(4+7i)
paste('hola','Hola')
typeof(as.integer(4))
typeof(4)
#
print('Hola, mundo')

cat("Hello World\n")
#
a <- 10
b <- 20
c = 5 
a+b
a = 'Hola'
##

# Voy a calcular la media de la secuencia de numeros de 1 a 5 
mean(1:5, na.rm = FALSE) # NOT AVAIBLE


#Solucion 2 punto taller
x=1:500
y=atan(x)
z=tan(atan(x))

y == z
y>z
y<z
x==z
cbind(x,z)

###
x=z #asignacion
x==z #comparacion
##Punto4
n='5.26454'
class(n)
class(as.numeric(n))
##Punto 2
x=1:1000 
y=x**(-1)
atan(y)
atan((1:1000)^-1)
atan(1:1000)^-1
log(exp(1))
atan(tan(1))
#Punto 6
a=10
b=15
c=3
a > b & c < b
c!=a & c!=b
