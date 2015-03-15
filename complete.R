complete<-function(directory,id=1:332)
{
  directory<-"/Users/sailinnthu/R/specdata/"
  setwd(directory)
  files<-dir()
  data<-data.frame()
  for(i in id)
  {
    temp<-read.csv(files[i])
    good<-complete.cases(temp)
    temp1<-temp[good,]
    x<-c(i,nrow(temp1))
    data<-rbind(data,x)
  }
  setwd("/Users/sailinnthu/R/specdata/")
  names(data)<-c("id","nobs")
  data
}


#test
> complete("specdata", 1)
  id nobs
1  1  117
> complete("specdata", c(2, 4, 8, 10, 12))
  id nobs
1  2 1041
2  4  474
3  8  192
4 10  148
5 12   96
> complete("specdata", 30:25)
  id nobs
1 30  932
2 29  711
3 28  475
4 27  338
5 26  586
6 25  463
> complete("specdata", 3)
  id nobs
1  3  243
> 
