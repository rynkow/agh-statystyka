N <- 7
event <- function(wektor){
  result <- rep(FALSE, N)
  for (el in wektor){
    result[el] <- TRUE
  }
  return (result)
}

union <- function(ev1,ev2){
  result <- ev1
  for(i in 1:N){
    if (ev2[i]){
      result[i] <- TRUE
    }
  }
  return(result)
}
intersect <- function(ev1,ev2){
  result <- rep(FALSE,N)
  for(i in 1:N){
    if (ev2[i] && ev1[i]){
      result[i] <- TRUE
    }
  }
  return(result)
}
complement <- function(ev){
  result <- rep(FALSE,N)
  for(i in 1:N){
    result <- !ev
  }
  return(result)
}
prob <- function(space, ev){
  result <- 0
  for (i in 1:N){
    if (ev[i]){
      result <- result + space[i]
    }
  }
  return(result)
}

