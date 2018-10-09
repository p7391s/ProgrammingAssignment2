## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Create a matrix object that caches the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

## Initialize the inversion property
	i <- NULL

	## Set the method for the matrix
	set <- function(matrix) {
		m <<- matrix
		i <<- NULL
	}
	
	## Get the method for the matrix
	get <- function() {
	
	## Return matrix
	m
	}

	## Setting function of the inverse matrix 
	setInverse <- function(inverse) {
		i <<- inverse
	}

	## The function of obtaining the inverse matrix
	getInverse <- function() {
		## Return reverse properties
		i
	}

	## Return the list of methods
	list(set = set, get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
		m <- x$getInverse()

		## Return the inversion if it exists
		if(!is.null(m)) {
			message("Getting cached data")
			return(m)
		}

		## Getting a matrix from an object
		data <- x$get()

		## Calculation of inverse using matrix multiplication
		m <- solve(data) %*% data

		## Set the object to the inverse
		x$setInverse(m)
		
		## Matrix return
		m
}
