## Caching the Inverse of a Matrix
## Matrix inversion is usually a costly computation and there may be some benefit
# to caching the inverse of a matrix rather than compute it repeatedly (there are 
# also alternatives to matrix inversion that we will not discuss here). 
# These two functions are to cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the inverse value of matrix x
        i <- NULL
        ## set function is to set a matric to the global variable x 
        # and null to global value m
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        ## get function is to get the matric x from argument or assigned by set function
        get <- function() {
                x
        }
        ## setInverse function is to assign the inverse value of x to global variable i
        setInverse <- function(inverse) {
                i <<- inverse 
        }
        ## getInverse is to extract the value of i assigned by setInversse
        getInverse <- function() {
                i
        }
        list(set = set, get = get,setInverse = setInverse, getInverse = getInverse)
        
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## assign the inverse of x to i
        i <- x$getInverse()
        ## Return a matrix that is the inverse of 'x' while i is not null
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        ## get matric and set the inverse of x to i while i is null
        data <- x$get()
        i <- solve(data,...)
        x$setInverse(i)
        i
        
}


