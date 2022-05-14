prob <- function(m){
  sumOfElements = sum(rowSums(m))
  return(m/sumOfElements)
}

boundary <- function(prob, i){
  if (i == 2) {
    return(colSums(prob))
  }
  return(rowSums(prob))
}

conditional <- function(prob, i, v){
  if (i == 1) {
    return(prob[v,]/boundary(prob,i)[v])
  }
  return(prob[,v]/boundary(prob,i)[v])
  
}

mean <- function(prob,i=NA){
  if (is.na(i)) {
    return(c(mean(prob,1),mean(prob,2)))
  }
  if (i == 1) {
    return(sum(rowSums(prob*c(1:dim(prob)[1]))))
  }
  if (i == 2) {
    return(sum(colSums(prob)*c(1:dim(prob)[2])))
  }
}

covariance <- function(prob){
  cov <- sum(colSums(prob*c(1:dim(prob)[1]))*c(1:dim(prob)[2])) - prod(mean(prob))
  varX <- sum(rowSums(prob)*c(1:dim(prob)[1])^2)-mean(prob,1)
  varY <- sum(colSums(prob)*c(1:dim(prob)[2])^2)-mean(prob,2)
  covMatrix <- matrix(0, 2, 2)
  covMatrix[1,2] <- cov
  covMatrix[2,1] <- cov
  covMatrix[1,1] <- varX 
  covMatrix[2,2] <- varY 
  return(covMatrix)  
}

independent <- function(prob){
  Px <- boundary(prob,1)
  Py <- boundary(prob,2)
  for (x in c(1:dim(prob)[1])) {
    for (y in c(1:dim(prob)[2])) {
      if (!(prob[x,y]==Px[x]*Py[y])) {
        return(FALSE)
      }
    }
  }
  return(TRUE)
}




