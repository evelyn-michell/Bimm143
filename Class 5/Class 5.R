#' ---
#' title: "Class"
#' author: "Evelyn Diaz A15576617"
#' date: "October 12, 2021"
#' ---
#Class 5: Data Visualization

#let's start with a scatterplot
#before we use it we need to load it
library(ggplot2)

#Every plot has data +aes+ geoms
ggplot(data=cars)+aes(x=speed, y=dist)+ geom_point()+geom_smooth()

#change to a linear model
p <- ggplot(data=cars)+aes(x=speed, y=dist)+ 
  geom_point()+ 
  geom_smooth(method="lm")

p+ labs(title="Speed and stopping distances of cars", x="Speed(MPH)", y="Dist(Miles)")

#Base graphics is shorter
plot(cars)

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

#Q) how many genes?
nrow(genes)

#Q) how to access state col
table(genes$State)

#Q) What % up or down
prec <- table(genes$State)/nrow(genes)* 100
round(prec, 2)


#GGPLOT Genes
ggplot(data=genes)+ aes(x=Condition1, y=Condition2, col=State) + geom_point()

#Set p
p<- ggplot(data=genes)+ aes(x=Condition1, y=Condition2, col=State) + geom_point()

#Colors
p + scale_colour_manual( values=c("blue","gray","red") )

#Labeling Gene ggplot
p + scale_colour_manual(values=c("blue","gray","red")) +
  labs(title="Gene Expresion Changes Upon Drug Treatment",
       x="Control (no drug) ",
       y="Drug Treatment")

#Going further
#gampinder
library(gapminder)
