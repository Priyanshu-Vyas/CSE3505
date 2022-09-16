install.packages("MASS")
setwd("/home/student/20BCE1685");
write.csv(biopsy,'dataset.csv');
df <- read.csv('dataset.csv');
View(biopsy);
is.na(biopsy);
sum(is.na(biopsy));
unique(biopsy$V1)
rowSums(df[3:11])
df$Attr <- rowSums(df[3:11])
View(df)
View(biopsy)
# Display all the duplicates ID's.
biopsy %>%
  summarise(
    count = n()>1
  )
biopsy$ID <- data.frame(sort(biopsy[1]))
View(biopsy)
data("biopsy")
View(biopsy)
