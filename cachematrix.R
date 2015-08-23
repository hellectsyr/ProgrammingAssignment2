## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The first function makeCacheMatrix create a special"matrix", which is really a list containing a function to: 1. set the value of the matrix 2. get the value of the matrix 3. set the value of the inverse 4. get the value of the inverse

makeCacheMatrix <- function(X = matrix()) {
        inv <- NULL
        set <- function(Y){
                X <<- Y
                inv <<- NULL
        }
        get <- function() X
        setinverse <- function(inverse)inv <<- inverse
        getinverse <- function() inv
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## Write a short comment describing this function

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(X, ...){
	inv <- X$getinverse()
	if(!is.null(inv)){
	        message("matrix is in the memory")
	        return(inv)
	}
	data <- X$get()
	inverse <- solve(data, ...)
	X$setinverse(inv)
	inv
}


