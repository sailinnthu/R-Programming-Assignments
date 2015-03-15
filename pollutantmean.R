pollutantmean<-function(directory,pollutant,id=1:332)
{
  directory<-"/Users/sailinnthu/R/specdata/"
  setwd(directory)   
  files<-dir()
  data<-data.frame()
  for(i in id)
  {
    data<-rbind(data,read.csv(files[i]))
  }
  mean<-mean(data[,pollutant],na.rm=TRUE)
  mean<-round(mean,digits = 3)
  setwd("/Users/sailinnthu/R/specdata/")
  mean
}

#testing
> pollutantmean(directory = "/Users/sailinnthu/R/specdata/",pollutant = "sulfate",id = 1:10)
[1] 4.064
> pollutantmean(directory = "/Users/sailinnthu/R/specdata/",pollutant = "nitrate",id = 70:72)
[1] 1.706
> pollutantmean(directory = "/Users/sailinnthu/R/specdata/",pollutant = "nitrate",id = 23)
[1] 1.281
> 
