rm(list=ls()) #Clears the Workspace and remove all variables

# Assign a variable with an integer

var <- 23 #ALT+- or var=23
class(var)

a <- 10L #L for integer without its it is of type numeric
a
is.integer(a) #to check weather the value is integer or not 

s <- "HELLO WORLD!!"
class(s)
s1 <- 'WELCOME'
class(s)

# String Functions
paste(s,s1)

sprintf("%s has scored %d marks","Alice",100)

substr(s,start=5,stop=10)

# R-indexing starts from 1 instead of 0 unlike python

sub("R","C",s) # Substitue C  wherever R first comes
s

# Complex type
cmp <- 21+10i
sqrt(-1)
sqrt(-1+0i)
class(cmp)
sqrt(as.complex(-1)) #explicit type conversion

#logical type
lg <- TRUE
p=TRUE;q=FALSE
p&q;p|q;!p

class(a)
typeof(a)
1/0
1/Inf
log(10,2) #log(a,b) a=value b=base
log(10,10)
0/0


# Vectors
x <- 1:20 # sequence of integers
x
class(x)
typeof(x)
# c-compile or collection
x <- c(0.1,0.2) #numeric value
x <- c(TRUE,FALSE) #Logical vector
x <- c(T,F) #logical vector
x <- c("A","B","C") #character vector
x <- c(1L,2L) #integer vector
x <- c(1+2i,3) #complex vector

#vector()
x <- vector()
x
x <- vector("numeric",length=10)
x
x <- vector("integer",length=10)
x
x <- vector("character",length=10)
x
x <- vector("logical",length=10)
x
x <- vector("complex",length=10)
x

#implicit type conversion - mixed objects 
y <- c(1.5,"a") #character
y
y <- c(1.5,TRUE) #numeric
y
y <- c(TRUE,"a") #character
y

#Expicit type conversion
x <- 2.5
class(x)
as.integer(x)
x
x <- 0:5
x
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
as.complex(x)

#Non-sensical conversion results 
x <- c('a','b','c')
x
as.numeric(x)
as.logical(x)

#vector arithmetics
x <- c(1,3,5)
y <- c(2,4,6)
x+y
x-y
x*y
x/y

#recycling rule
y <- c(2,4,6,8,10)
x+y

#Matrix
m <- matrix()
m
m <- matrix(nrow=3,ncol = 2)
m
attributes(m)
dim(m)

m <- matrix(1:6,nrow = 3,ncol = 2) #constructed column-wise
m <- matrix(1:6,nrow = 3,ncol = 2,byrow = TRUE)
m

#constructing from vector 
m <- 1:6
dim(m) <- c(3,2)
m

x <- 1:3
y <- 10:12
#constructing using column-binding
cbind(x,y)

#constructing using row-binding
rbind(x,y)

#Matrix Multipication
x <- matrix(c(1,2,3,4),nrow = 2,ncol = 2)
y <- matrix(c(10,10,10,10),nrow = 2,ncol = 2)
x*y
x%*%y #matrix multiplication

#Matrix opeerations
t(x) #transpose
solve(x) #inverse
det(x) #determinant
