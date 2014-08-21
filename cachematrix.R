This program caches the inverse of a matrix x so were it to be needed again it can be retrieved to save on computation time.


## This function sets and gets the value of the matrix as well as 
## seting and getting the value of the inverse of the matrix.
    
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
                
}

## Sets the value of the matrix.
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}

cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of x.
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setsolve(m)
        m
}
