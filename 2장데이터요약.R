library(ggplot2)
transp <- c("bicycle","bus","bus","walking","bus","bicycle","bicycle",
            "bus","bus","bus","bicycle","bus","bicycle","bicycle","walking",
            "bus","bus","bicycle","bicycle","walking","walking",
            "bicycle","bus","bus","bus","bus","bicycle",
            "bus","bus","bicycle","bicycle","bicycle")
dat1<-data.frame(transp)
dat1

library(forcats) # 빈도수가 순서대로 정렬됨
ggplot(data=dat1) +geom_bar(mapping=aes(x=fct_infreq(transp))) + 
  xlab("Transportion")

obesity <- factor(c("underweight","normal",
                    "overweight","obese"))
count <- c(6,69,27,13)
perc<-count/sum(count)*100
perc
dat2 <- data.frame(obesity,count,perc)
dat2

ggplot(data=dat2)+geom_bar(mapping=aes(x=obesity,y=perc),
                           stat="identity")+
  xlab("obesity")+
  ylab("percentage(%)")

table(transp)
dat3 = data.frame(transportation=c('bicycle','bus','walking'),
                  count=c(13,15,4))
dat3
ggplot(data=dat3)+geom_bar(mapping=aes(x="",y=count,fill=transportation),
                           stat="identity")+
  coord_polar("y",start=0)+xlab("")+ylab("")+
  theme(axis.text=element_blank(), # 깔끔한 원그래프
        axis.ticks=element_blank(),
        panel.grid=element_blank())  

