## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function




## This function creates a special "matrix" object that can cache its invers

makeCacheMatrix <- function(x = matrix()) {
  ## These functions written in partial fulfillment of Coursera Data Science: R Programming
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x     ##define the get fucntion - returns value of the matrix argument
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse,      ## assigns value of inv in parent environment
  getInverse = getInverse)
}

##Please include your own comment to explain your code (Required in Rubric)


# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
