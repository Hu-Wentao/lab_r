f = function(n){ 
    if(n==1){
        return (n)
    }else{
        return (n*f(n-1))
    }
}

print(f(15))