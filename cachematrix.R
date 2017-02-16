## two functions will work together to cache the inverse of a matrix

## create the list of functions the can cache the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y)
        {
          x <<- y
          i <<- NULL
        }
        get <- function()
          x
        setinverse <- function(inverse)
          i <<- inverse
        getinverse <- function()
          i
        list(
          set = set,
          get = get,
          setinverse = setinverse,
          getinverse = getinverse
  )
}


## compute the inverse of the special "matrix" returned by makeCacheMatrix
## if the inverse has been calculated, then the function will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if (!is.null(i))
        {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}

