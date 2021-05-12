hiltbert_4<- function(){
  i<-matrix(rep(1:4,each=4),nrow = 4);
  print(i);
  j<-matrix(rep(1:4,each=4),nrow = 4,byrow = T);
  print(j);
  H<-1/(i+j-1);
  print(H);
}