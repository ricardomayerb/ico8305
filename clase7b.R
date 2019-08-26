library(ggplot2)

ToothGrowth$dose <- as.factor(ToothGrowth$dose)
head(ToothGrowth)

p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot()
p
# Rotate the box plot
p + coord_flip()
# Notched box plot
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot(notch=TRUE)
# Change outlier, color, shape and size
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot(outlier.colour="red", outlier.shape=8,
               outlier.size=4)

p + stat_summary(fun.y=mean, geom="point", shape=23, size=4)

p + scale_x_discrete(limits=c("0.5", "2"))

# Box plot with dot plot
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)
# Box plot with jittered points
# 0.2 : degree of jitter in x direction
p + geom_jitter(shape=16, position=position_jitter(0.2))

# Change box plot line colors by groups
p<-ggplot(ToothGrowth, aes(x=dose, y=len, color=dose)) +
  geom_boxplot()
p

p + theme(legend.position="top")
p + theme(legend.position="bottom")
p + theme(legend.position="none") # Remove legend

# Change box plot colors by groups
ggplot(ToothGrowth, aes(x=dose, y=len, fill=supp)) +
  geom_boxplot()
# Change the position
p<-ggplot(ToothGrowth, aes(x=dose, y=len, fill=supp)) +
  geom_boxplot(position=position_dodge(1))
p

# Add dots
p + geom_dotplot(binaxis='y', stackdir='center',
                 position=position_dodge(1))
