## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {      ## if user wants to reset matrix
    x <<- y               ## reassign new matrix to x
    m <<- NULL            ## reinitialize m to NULL
  }
  get <- function() x
  setInvmatrix <- function(Invmatrix) 
  m <<- Invmatrix
  getInvmatrix <- function() m
  list(set = set, get = get, setInvmatrix = setInvmatrix, getInvmatrix = getInvmatrix )
  
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInvmatrix()
  if(!is.null(m))           ## If user had calculated same matrix before & the matrix has not changed
  {
    message("Getting Cached Data")
    return (m)              ## Returning old result directly from cache
  }
  data <- x$get()           ## otherwise get the uncalculated matrix
  m <- solve(data, ...)     ## calculate the inverse matrix
  x$setInvmatrix(m)         ## reassign inverse matrix
  m                         ## Print the inverse matrix
  
}


