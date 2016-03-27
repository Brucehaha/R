source("C:/Users/Bruce/OneDrive/Documents/GitHub/ProgrammingAssignment2/cachematrix.R")
m <- makeCacheMatrix(matrix(1:9, , 2))
m$get()
m$getInverse()
cacheSolve(m)
cacheSolve(m)


y <- makeCacheMatrix()
y$set(matrix(c(2, 2, 1, 4), 2, 2))
y$get()
y$getInverse
x<-cacheSolve(y)
cacheSolve(y)
y$getInverse()

solve(y$get())
