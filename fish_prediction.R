library("neuralnet")
library(sets)
trainingdata <-  read.table("D:/RStudio/bin/fish dataset/prawns_train.txt",header = FALSE) 
colnames(trainingdata) <- c("year","month","harbour","quantity","price")
net.sqrt <- neuralnet(price~year+month+harbour+quantity,trainingdata, hidden =c(5,3),algorithm = "backprop",
                     linear.output=FALSE,learningrate = 0.01, threshold=0.001,stepmax = 10000000)
plot(net.sqrt)
testdata<-read.table("D:/RStudio/bin/fish dataset/final_tunafish_test.txt",header = FALSE)

net.results <- compute(net.sqrt,testdata ) 
ls(net.results)
print(net.results$net.result)
sam<-net.results$net.result
print(sam)
for (i in 1:150) {
  if(sam[i,1]<=0.04){
    print("Low_1")
  }else if(sam[i,1]>0.04 && sam[i,1]<=0.11){
      print("Low_2")
    }else if(sam[i,1]>0.11 && sam[i,1]<=0.18){
        print("Low_3")
      }else if(sam[i,1]>0.18 && sam[i,1]<=0.25){
          print("medium_1")
        }else if(sam[i,1]>0.25 && sam[i,1]<=0.32){
            print("medium_2")
          }else if(sam[i,1]>0.32 && sam[i,1]<=0.40){
              print("medium_3")
            }else if(sam[i,1]>0.40 && sam[i,1]<=0.47){
                print("High_1")
              }else if(sam[i,1]>0.47 && sam[i,1]<=0.54){
                  print("High_2")
                }else if(sam[i,1]>0.54 && sam[i,1]<=0.61){
                    print("High_3")
                  }else if(sam[i,1]>0.61 && sam[i,1]<=0.68){
                      print("Very_High_1")
                    }else if(sam[i,1]>0.68 && sam[i,1]<=0.75){
                        print("Very_High_2")
                      }else if(sam[i,1]>0.75 && sam[i,1]<=0.82){
                          print("Very_High_3")
                        }else if(sam[i,1]>0.82 && sam[i,1]<=0.89){
                            print("Extreme_High_1")
                          }else if(sam[i,1]>0.89 && sam[i,1]<=0.95){
                              print("Extreme_High_2")
                            }else
                              {if(sam[i,1]>0.95)
                              print("Extreme_High_3")
                            }
  
}

