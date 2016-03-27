my_matix <- matrix(1:4,2,2)

makeCacheMatrix(my_matix)$get()

makeCacheMatrix(my_matix)$getInverse()


cacheSolve(makeCacheMatrix(my_matix))
