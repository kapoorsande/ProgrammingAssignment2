## Programming Assignment2: Cache the inverse of a matrix


## The function makeCacheMatrix creates a special object "matrix" and caches its inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) m <<- solve
	getmatrix <- function() m
	list (set = set , get = get
		matrix = setmatrix,
		inv = getmatrix)
	
}


## cacheSolve computes  the inverse of the special "matrix" returned by makeCacheMatrix above
##If the inverse has already been calculated , then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
m <- x$getmatrix()
if (!is.null(m)) {
	message ("getting cached data")
	return (m)
	}
data <- x$get()
m <- solve(matrix,...)
x$setmatrix(m)
m
}
