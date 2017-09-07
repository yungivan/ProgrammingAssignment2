## Put comments here that give an overall description of what your
## functions do
## two functions that allow caching to happen

## Write a short comment describing this function
## a vector that has the list of functions used

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## checks if inverse is cached, if so return the cached value, if not then calculate and cache itd

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  inverse
}
