## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL 

  set <- function(y) {
    # accessing parent variables and "<<-" 
    x <<- y
    invMatrix <<- NULL
  }

  get <- function() x

  setInverse <- function(invM) invMatrix <<- invM

  getInverse <- function() invMatrix 

  list(set= set, get = get, setInverse = setInverse , getInverse =getInverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

   invMatrix <- x$getInverse()

   if(!is.null(invMatrix )) {
      message("Getting cached matrix data.")
      return(invMatrix)
   }

   pMatrix <- x$get()
   invMatrix  <- solve(pMatrix )
   x$setInverse(invMatrix)
   invMatrix  
}
