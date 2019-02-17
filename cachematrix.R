## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL 
  #set the value for this special matrix
  set <- function(y) {
    x <<- y
    inv <- NULL
  }
  #get matrix from cache
  get <- function() {
    x
  }
  #set inverse for this matrix , so you don't have to calculate it again
  setInverse <- function(inver=matrix()) {
    inv <<- inver
  }
  #get the inverse of the matrix from cache 
  getInverse <- function() {
    inv
  } 
  
  list( setMatrix= set , getMatrix= get 
        , setInverse = setInverse , getInverse= getInverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse() 
  if( !is.null(inv)) {
    print('getting inverse from the cache')
    return(inv)
  }
  mat <- X$getMatrix()
  
  inv <- solve(mat,...)
  
  x$setInv(inv)
  return(inv)
}
