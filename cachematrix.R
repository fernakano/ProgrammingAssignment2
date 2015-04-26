## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# set the value of the matrix
# get the value of the matrix
# set the value of the matrix inverse
# get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	invertedM <- NULL
    set <- function(y) {
        x <<- y
        invertedM <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) invertedM <<- inverse
    getinverse <- function() invertedM
    list(set=set, 
    	get=get, 
    	setinverse=setinverse, 
    	getinverse=getinverse)    
}


## Write a short comment describing this function
#this function will return the inverse matrix, validating first if its already on the cache, 
#if not execute again the inversion
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invertedM <- x$getinverse()
    if(!is.null(invertedM)) {
        message("getting cached data.")
        return(invertedM)
    }
    data <- x$get()
    invertedM <- solve(data)
    x$setinverse(invertedM)
    invertedM        
}
