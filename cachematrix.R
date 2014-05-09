## R - Programming - Assignment number 2
## 5/9/2014
## The functions below are used to cache functions and the 
## results (inverse of a matrix) from those functions 
## which could result in long processing time


## The following function that creates a matrix object
## and cache the inverse of that matrix 

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) m <<- solve
  getsolve <- funtion() m
  list(set = set, get = get, setSolve = setSolve, 
       getSolve = getSolve)
  
}


## if the inverse matrix is cached then result is returned, 
## otherwise if the inverse matrix result is not Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached inverse matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setSolve(m)
  m
}
