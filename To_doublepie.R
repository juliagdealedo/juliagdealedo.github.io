# SCRIPT DOUBLE PIE CHART (DONUTS + PIE) #

# By Julia G. de Aledo 20/01/21

# Libraries 
library(RColorBrewer) 
library(dplyr) #arrange
library(reshape2) #dcast
library(tibble) #column_to_row

# Starting point: a data frame with the first column as your Species 
# and the next ones your values per factor and the last one with the sum
read.table("myabund")
colnames(myabund) <- c("Species", "Factor1", "Factor2", "Factor3", "Total")

# Select the first 10 and order it by the Total
myabund <- arrange (myabund, desc(Total))[c(1:10),] 

# Needing TWO data frames with three columns: Species // Factor // Value

# 1) A data frame with the information gathered by the Total. 
piedata1 <- arrange (myabund[c(1,5)], Species) 

# 2) A dara frame with an additional column with the factor

  # Species: name of the species (chr)
  # Factor: name of the factor (chr)
  # Value: value of the species (num)

piedata2 <- melt(as.data.frame(myabund[,1:4]), id="Species") # Convert to a dataframe readible by pie()
piedata2 <- arrange(piedata2, Species) # Order by species column "Species"

# Plot double donus chart

# Set the colours (yourcolour2 copy x3 to make the inner circle with the same colours)

display.brewer.all(colorblindFriendly = TRUE)  # colour-blind people 
yourcolor1 <-  brewer.pal (10, "Paired")
yourcolor2 <- rep (yourcolor1, each=3)

# plot - 1 outcircle, 2 innercircle, 3 border envolving the outcircle
# change the border colour, sizes  angle and density of lines,  as you please

jpeg("pic.jpeg", width = 25, height = 15, units = "cm", pointsize = 10,
     res = 300)

par(mar = c(2, 3, 1, 1))
pie(piedata2[,3], labels=NA, col=yourcolor2, bg="black", density=c(7,20,30), angle=c(0,90,40))
par(new = TRUE)
pie(piedata1[,2], radius=0.6, labels=NA, col=yourcolor1, border="black")
par(new = TRUE)
pie(piedata1[,2], labels=piedata1$Species, col=NA, border="black", family="mono")
legend(-0.15,0.12, cex=1, density=c(25,35,45), angle=c(0,90,40), legend=piedata2$variable[1:3], bg="white")

dev.off()
