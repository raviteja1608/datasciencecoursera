## This code is written to create a pair of functions that can cache the inverse of a matrix.

## The makecachematrix function creates a matrix object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) 
  {
  inv <- NULL
set <- function(y)
  {
  x <<- y
  inv <<- NULL
}
get <- function() {x}
setInverse <- function(solveMatrix) {inv <<- solveMatrix}
getInverse <- function() {inv}
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## The cachesolve function calculates the inverse of the  matrix returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) 
  {
  inverse <- x$getInverse()
if(!is.null(inverse))
  {
  message("getting cached data")
  return(inverse)
  }
data <- x$get()
inverse <- solve(data)
x$setInverse(inverse)
inverse      
        ## Return a matrix that is the inverse of 'x'
}
