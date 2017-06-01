## Two functions that cache the inverse of a matrix


## makeCacheMatrix:creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(inverse) {
    i <<- inverse
  }
  getInverse <- function() {
    m
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## cacheSolve: computes the inverse of the special "matrix"  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if( !is.null(m) ) {
          message("getting cached data")
          return(m)
        data <- x$get()
        m <- solve(data,...)   
        x$setInverse(m)
        ## Return the matrix
        m      
}
