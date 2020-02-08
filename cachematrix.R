## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special matrix object which is a list containing functions 
## to set, get the value of matrix 
## and to set, get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
j<- NULL
set<- function(y){
x<<-y
j<<- NULL        
}
get<-function()x
setInverse<-function(inverse)j<<-inverse
getInverse<-function()j 
list(set=set,get=get,
setInverse=setInverse,
getInverse=getInverse)
    }

## Write a short comment describing this function
## This function calculates the inverse of the special "matrix" object 
## created with the first function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
j<-x$getInverse()
 if(!isNULL(j)){
         message("getting cached data")
         return(j)
}
mat<-x$get()
        j<-solve(mat,...)
        x$getInverse(j)
        j
        }
