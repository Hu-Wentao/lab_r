f = function(n){
    if(n==1 || n==2){
        return (1)
    }else{
        return (f(n-1)+f(n-2))
    }
}

fibseq = function(n){
    return (paste("斐波那契数列中的第",n,"个数是：",f(n)))   
}

print(fibseq(1))
print(fibseq(2))
print(fibseq(3))
print(fibseq(4))
print(fibseq(5))
print(fibseq(6))
