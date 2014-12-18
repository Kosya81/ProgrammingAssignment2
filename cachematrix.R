## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
  set <- function(y) {
    x <<- y
    im <<- NULL
  }
  get <- function() x
  setim <- function(inv_matrix) im <<- inv_matrix
  getim <- function() im
  list(set = set, get = get,
       setim = setim,
       getim = getim)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  im <- x$getim()
  if(!is.null(im)) {
    message("getting cashed data")
    return(im)
  }
  data <- x$get()
  im <- solve(data,...)
  x$setim(im)
  im
}