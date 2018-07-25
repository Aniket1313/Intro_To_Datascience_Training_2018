##0: Load the data in RStudio
library(readr)
titanic <- read_csv("C:/Users/.../Desktop/titanic_clean.csv")
View(Titanic)

##1: Check the structure of titanic
str(Titanic)
#remove first column
titanic <- titanic[,-c(1)]


##2: Use ggplot() for the first instruction
library(ggplot2)
ggplot(titanic, aes(x = pclass, fill = sex)) + geom_bar(position = "dodge")

#display results that show the distribution of gender in each Ticket Class with 1st being in high social status and 3rd being in low social status


##3: Plot 2, add facet_grid() layer
ggplot(titanic, aes(x = pclass, fill = sex)) + geom_bar(position = 'dodge') + facet_grid(".~ survived")
#display the survival status/rate between Social Status and Gender


##4: Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

## 5 - Plot 3, but use the position object from instruction 4
ggplot(titanic, aes(x = pclass, y = age, col = sex)) + geom_jitter(size = 3, alpha = 0.5, position = posn.jd) + facet_grid(". ~ survived")
#display a distribution of survivability based on age and gender.It seems that young men with lower social status suffered the most casualties while women in general had higher probability of survival.
