corr<-function(directory,threshold=0){
  directory<-"/Users/sailinnthu/R/specdata/"
  setwd(directory)
  files<-dir()
  result<-vector("numeric")
  id=1:332
  for(i in id)
  {
    temp<-read.csv(files[i])
    good<-complete.cases(temp)
    temp1<-temp[good,]
    if(nrow(temp1)>threshold){
      x<-temp1[,2]
      y<-temp1[,3]
      result<-append(result,cor(x,y))     
    }
  }
  setwd("/Users/sailinnthu/R/specdata/")
  result
}

#test
> source("/Users/sailinnthu/R/corr.R")
> source("/Users/sailinnthu/R/complete.R")
> cr<-corr("/Users/sailinnthu/R/specdata/",150)
> head(cr)
[1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667 -0.07588814
> summary(cr)
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.21060 -0.04999  0.09463  0.12530  0.26840  0.76310 
> cr<-corr("/Users/sailinnthu/R/specdata/",400)
> head(cr)
[1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884 -0.15782860
> summary(cr)
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.17620 -0.03109  0.10020  0.13970  0.26850  0.76310 
> cr<-corr("/Users/sailinnthu/R/specdata/",5000)
> summary(cr)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
                                                
> length(cr)
[1] 0
> cr<-corr("/Users/sailinnthu/R/specdata/")
> summary(cr)
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.05282  0.10720  0.13680  0.27830  1.00000
> length(cr)
[1] 323
