## This function calculates the inverse of a square matrix and 
##stores its value in the cache memory

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
}
		smatrix <- function(solve) m <<- solve
		gmatrix <- function() m
		list(set = set, get = get,
		smatrix = smatrix, gmatrix = gmatrix)
		}
	

## cache if.. hope it works

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$gmatrix
		if(!is.null(m) {
		print("getting cached data")
		return(m)
}
		data <- x$get()
		m <- solve(data, ...)
		x$smatrix(m)
		m

}