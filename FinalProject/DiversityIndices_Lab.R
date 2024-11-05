

#We have been working in Rmarkdown so far because it's a nice platform for sharing calculations and results.
#However, sometimes, you just need R to do some calculations and it's not worth the extra effort of working with Rmarkdown.
#This week, we will work with a simple R script. It's basically the same as the code blocks in Rmarkdown. 

#First, install a package called vegan

library(vegan)
library(readr)


data(BCI) #This is example data included in the vegan package
#For this package, your rows are your samples, the columns are different species

example<-BCI[1,] #For the example, let's just use the first row of data (because you all have one sample)

shannon <- diversity(lab_data) # note that Shannon's is default
shannon #Typically ranges from 1.5 - 3.4, higher = more diverse 

simpson <- diversity(lab_data, "simpson") # calculate Simpson's 1-D Index of Diversity                            
simpson #for each site. # closer to 1 = greater diversity


