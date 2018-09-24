#### Exercise: least squares regression

setwd("C:/Users/Alan/Desktop/linear_regression")
states.data <- readRDS("dataSets/states.rds")
states.info <- data.frame(attributes(states.data)[c("names", "var.labels")])

##   1. Examine/plot the data before fitting the model
View(states.info)
missing_value<-states.data[!complete.cases(states.data), ]
sts.ex.sat <- subset(states.data, select = c("energy", "metro"))
sts.ex.sat <-na.omit(sts.ex.sat)
summary(sts.ex.sat)
cor(sts.ex.sat)
plot(sts.ex.sat)

##   2. Print and interpret the model `summary'
regre1 = lm(energy ~ metro , data=sts.ex.sat)
print(summary(regre1))

##   3. `plot' the model to look for deviations from modeling assumptions
plot(regre1)

##   Select one or more additional predictors to add to your model and
##   repeat steps 1-3. Is this model significantly better than the model
##   with /metro/ as the only predictor?

## trying out income
sts.ex.sat <- subset(states.data, select = c("energy", "metro","income"))
sts.ex.sat <-na.omit(sts.ex.sat)
summary(sts.ex.sat)
cor(sts.ex.sat)
plot(sts.ex.sat)
regre2 = lm(energy ~ metro+income , data=sts.ex.sat)
print(summary(regre2))
plot(regre2)

## trying out land area
sts.ex.sat <- subset(states.data, select = c("energy", "metro","area"))
sts.ex.sat <-na.omit(sts.ex.sat)
summary(sts.ex.sat)
cor(sts.ex.sat)
plot(sts.ex.sat)
regre3 = lm(energy ~ metro+area , data=sts.ex.sat)
print(summary(regre3))
plot(regre3)

## trying out toxic released
sts.ex.sat <- subset(states.data, select = c("energy", "metro","toxic"))
sts.ex.sat <-na.omit(sts.ex.sat)
summary(sts.ex.sat)
cor(sts.ex.sat)
plot(sts.ex.sat)
regre4 = lm(energy ~ metro + toxic , data=sts.ex.sat)
print(summary(regre4))
plot(regre4)

## trying out greenhouse gas
sts.ex.sat <- subset(states.data, select = c("energy", "metro","green"))
sts.ex.sat <-na.omit(sts.ex.sat)
summary(sts.ex.sat)
cor(sts.ex.sat)
plot(sts.ex.sat)
regre5 = lm(energy ~ metro + green , data=sts.ex.sat)
print(summary(regre5))
plot(regre5)

model0 = lm(energy ~ metro + toxic + area + green, data=states.data)
print(summary(model0))

## Conclusion: model doesn't seem to have improved with the addition of median income 
##             but does improve when individually considering land area and toxic released,
##             by adding both features into the model the fit is improved from 0.097 to 0.761


#### Exercise: interactions and factors

##   1. Add on to the regression equation that you created in exercise 1 by
##      generating an interaction term and testing the interaction.

model1 = lm(energy ~ metro + toxic * area * green, data=states.data)
print(summary(model1))

##  Adding toxic released ,area and greenhouse gas as interaction terms significantly 
##  increases our Adj. R2 value. The current model's Adjusted R2 is 0.825


##   2. Try adding region to the model. Are there significant differences
##      across the four regions?

states.data$region <- factor(states.data$region)
model2 = lm(energy ~ metro + toxic * area * green + region, data=states.data)
print(summary(model2))

## By adding regions we can see that the South and the North East are significantly different
