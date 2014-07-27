## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
    list(set = set, get = get)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
  m <- x$get()
  if(!is.null(m)) {
    message("getting cached data")
    return(solve(m))
  }
  solve(m)
  ## Return a matrix that is the inverse of 'x'
}
