## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(z = matrix()){
  inverseMatrix <- NULL
  set <- function(r){
    z <<- r
    inverseMatrix <<- NULL
  }
  get <- function() z
  setInverse <- function(solve) inverseMatrix <<- solve
  getInverse <- function() inverseMatrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(z, ...) {
  inverseMatrix <- z$getInverse()
  if(!is.null(inverseMatrix)) {
    message("getting cached data")
    return(inverseMatrix)
  }
  data <- z$get()
  inverseMatrix <- solve(data, ...)
  z$setInverse(inverseMatrix)
  inverseMatrix
}
