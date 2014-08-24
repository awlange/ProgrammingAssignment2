## Programming assignment 2 from Coursera: R Programming
## Two functions for caching the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.
## It is essentially just a container object for setting/getting a matrix and its inverse.
## Returns a list of the 4 functions.

makeCacheMatrix <- function(x = matrix()) {
    invx <- NULL
    
    set <- function(y) {
        x <<- y
        invx <<- NULL
    }
    get function() {
      x
    }
    setInverse <- function(inverse) {
      invx <<- inverse
    }
    getInverse <- function() {
      invx
    }
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.
## Returns a matrix that is the inverse of 'x'.

cacheSolve <- function(x, ...) {
    invx <- x$getInverse()
    if (!is.null(invx)) {
        message("Getting the cached matrix inverse...")
        return(invx)
    }
    tmp <- x$get()
    invx <- solve(tmp)
    x$setInverse(invx)
    invx  
}
