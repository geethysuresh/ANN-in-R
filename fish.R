library("neuralnet")
library(sets)

rna_mat <- matrix(ncol=6, nrow=450)

#print("Enter sequence")
#rna_mat <- readline()
trainingdata <-  read.table("D:/RStudio/bin/fish dataset/prawns.txt",header = FALSE) 
print(trainingdata)
print(trainingdata[449,])
#print(trainingdata[5,5])
for (i in 1:450) {
    if(trainingdata[i,1]=="Tunafish")
    {
      rna_mat[i,1]=2
    }else
      if(trainingdata[i,1]=="Catfish")
      {
        rna_mat[i,1]=1
      }else
        if(trainingdata[i,1]=="Prawns")
        {
          rna_mat[i,1]=3
        }
  
  rna_mat[i,2]=trainingdata[i,2]
  
  if(trainingdata[i,3]=="Ear_dec_1")
  {
    rna_mat[i,3]=1
  }else
    if(trainingdata[i,3]=="Mid_dec_1")
    {
      rna_mat[i,3]=2
    }else
      if(trainingdata[i,3]=="End_dec_1")
      {
        rna_mat[i,3]=3
      }else
        if(trainingdata[i,3]=="Ear_dec_2")
        {
          rna_mat[i,3]=4
        }else
          if(trainingdata[i,3]=="Mid_dec_2")
          {
            rna_mat[i,3]=5
          }else
            if(trainingdata[i,3]=="End_dec_2")
            {
              rna_mat[i,3]=6
            }
  
  if(trainingdata[i,4]=="Harbour_A")
  {
    rna_mat[i,4]=1
  }else
    if(trainingdata[i,4]=="Harbour_B")
    {
      rna_mat[i,4]=2
    }else
      if(trainingdata[i,4]=="Harbour_C")
      {
        rna_mat[i,4]=3
      }else
        if(trainingdata[i,4]=="Harbour_D")
        {
          rna_mat[i,4]=4
        }else
          if(trainingdata[i,4]=="Harbour_E")
          {
            rna_mat[i,4]=5
          }
  if(trainingdata[i,5]=="1_ton")
  {
    rna_mat[i,5]=1
  }else
    if(trainingdata[i,5]=="2_ton")
    {
      rna_mat[i,5]=2
    }else
      if(trainingdata[i,5]=="3_ton")
      {
        rna_mat[i,5]=3
      }
  
  if(trainingdata[i,6]=="low_1" || trainingdata[i,6]=="Low_1")
  {
    rna_mat[i,6]=1
  }else
    if(trainingdata[i,6]=="low_2"|| trainingdata[i,6]=="Low_2")
    {
      rna_mat[i,6]=2
    }else
      if(trainingdata[i,6]=="low_3" ||trainingdata[i,6]=="Low_3")
      {
        rna_mat[i,6]=3
      }else
        if(trainingdata[i,6]=="medium_1" || trainingdata[i,6]=="Medium_1")
        {
          rna_mat[i,6]=4
        }else
          if(trainingdata[i,6]=="medium_2" || trainingdata[i,6]=="Medium_2")
          {
            rna_mat[i,6]=5
          }else
            if(trainingdata[i,6]=="medium_3" || trainingdata[i,6]=="Medium_3")
            {
              rna_mat[i,6]=6
            }else
              if(trainingdata[i,6]=="high_1" || trainingdata[i,6]=="High_1")
              {
                rna_mat[i,6]=7
              }else
                if(trainingdata[i,6]=="high_2" || trainingdata[i,6]=="High_2")
                {
                  rna_mat[i,6]=8
                }else
                  if(trainingdata[i,6]=="high_3" || trainingdata[i,6]=="High_3")
                  {
                    rna_mat[i,6]=9
                  }
}
print(rna_mat)
y1<-t(rna_mat)
write(y1, file = "D:/RStudio/bin/fish dataset/prawns1.txt",ncolumns = 6, append = FALSE, sep = "\t")
#colnames(trainingdata) <- c("fish","year","month","harbour","quantity","price")
#net.sqrt <- neuralnet(price~fish+year+month+harbour+quantity,trainingdata, hidden =c(4,6),algorithm = "backprop",
 #                    linear.output=FALSE,learningrate = 0.01, threshold=0.01,stepmax = 1000000)
#plot(net.sqrt)
#testdata<-read.table("D://final_datasets/s1.txt",header = FALSE)
#
#net.results <- compute(net.sqrt,testdata ) 
#ls(net.results)
#print(net.results$net.result)
#sam<-net.results$net.result
#print(sam)