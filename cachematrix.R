## --------------------------------------------------
## R Coding 
## task: evaluation of the inverse matrix
##       by using "<<-" operator 
##       (caching the inverse matrix)
## functions:
##   makeCacheMatrix(<matrix>)
##   cacheSolve(makeCacheMatrix(<matrix>)) 
##
## 26.10.2016 A.Paul
## --------------------------------------------------

## function makeCacheMatrix with argument of a square matrix
## create a special matrix objekt with the componets
## "$set", "$get", "$setinvMatrix", "$getinvMatrix"

makeCacheMatrix <- function(x = numeric()) {
  ## arguments
  ##   x square matrix
  ## return
  ##   special matrix with components that can cache its inverse
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinvMatrix <- function(solve) m <<- solve
  getinvMatrix <- function() m
  list(set = set, get = get,
       setinvMatrix = setinvMatrix,
       getinvMatrix = getinvMatrix)
}


## function cacheSolve computes the inverse matrix of a matrix that
## create by function makeCacheMatrix by using function solve() 
cacheSolve <- function(x = matrix()) {
  ## arguments
  ##   special matrix create by function makeCacheMatrix()  
  ## return
  ##   inverse matrix    
  
  m <- x$getinvMatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinvMatrix(m)
  ## Return a matrix that is the inverse of 'x'    
  m  
}