myhilbert = function(n){
    m = matrix(1:n^2,n,n)
    for(i in 1:n){
        for(j in 1:n){
            m[i,j] =1/(i+j-1)
        }
    }
    return (m)
}

print(myhilbert(5))