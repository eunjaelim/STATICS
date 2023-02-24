#벡터
d <- 1:9
d
c <- seq(1,9,2)
c
f<-rep(10,5)
f
g<-c(d,f)
g
h<-c(4:1,seq(0,9,3))
h

i<- 1:4
i
j<-as.factor(i)
j
j+2
k <- as.character(1:4)
k
l<-c("K","N","O","U")
l
m<-i>2
m
#행렬
n <- rep(10,5)
o <- 1:5
p<-cbind(n,o)
p
q<-rbind(n,o)
q
r<-matrix(1:4 , 2,2)
s<-matrix(c(1,4,2,7),2,2)
r+s
r%*%s # 행렬곱
solve(s) # 역행렬
s[1,2]
s[1,]
s[,2]
#데이터프레임
name<-c("kim","Lee","park","jung")
age<-c(20,30,40,50)
sex<-as.factor(c("F","M","M","F"))
dat<-data.frame(name,age,sex)
dat
dat$name
dat$age
dat$sex
