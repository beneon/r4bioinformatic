sub_df = function(m=0,n=0,df){
  if (!is.numeric(m) | !is.numeric(n)){
    print("not numeric class")
    return(NULL)
  }else if(m<0 | m>dim(df)[1] | n<0 | n>dim(df)[2]){
    print("out of bound")
    return(NULL)
  }else if(m==0 & n==0){
    print("at least one in m,n should be provided")
    return(NULL)
  }else if(m==0){
    return(df[,n])
  }else if(n==0){
    return(df[m,])
  }else{
    return(df[m,n])  
  }
}

for (i in 1:100){
  if(is.null(sub_df(m=i,df=mtcars))){
    break
  }else{
    print(sub_df(m=i,df=mtcars))  
  }
}

