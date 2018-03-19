library("neuralnet")
library(sets)
trainingdata <-  read.table("D:/RStudio/bin/fish dataset/q_catfish_new.txt",header = FALSE) 
colnames(trainingdata) <- c("year","month","harbour","quantity")
net.sqrt <- neuralnet(quantity~year+month+harbour,trainingdata, hidden =c(3),algorithm = "backprop",
                      linear.output=FALSE,learningrate = 0.01, threshold=0.007,stepmax = 10000000)
plot(net.sqrt)
testdata<-read.table("D:/RStudio/bin/fish dataset/q_final_test.txt",header = FALSE)

net.results <- compute(net.sqrt,testdata ) 
ls(net.results)
print(net.results$net.result)
sam<-net.results$net.result
print(sam)
for (i in 1:150) {
  if(sam[i,1]<=0.3){
    print("1_ton")
  }else
    if(sam[i,1]>0.3 && sam[i,1]<=0.7){
      print("2_ton")
    }else
      if(sam[i,1]>0.7){
        print("3_ton")
      }
  
}