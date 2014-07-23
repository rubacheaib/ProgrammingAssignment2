#First I store the function in a variable
s<- makeCacheMatrix()

#Then creat and store that matrix
s$set(matrix())


# the first function gets and sets the value of the matrix and then calculates the inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

# next function first checks to see if the inverse has been calucated and out puts that value, if not it proceeds to calucate, store and output that value
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
