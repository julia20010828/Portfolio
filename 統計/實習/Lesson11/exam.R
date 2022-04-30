library(data.table)
library(dplyr)
library(ggplot2)
library(car)
library(ggfortify)

Orange

ggplot(data=Orange) + 
  geom_point(aes(x=age,
                 y=circumference,
                 color=Tree))

#建立迴歸模型
Orange.lm <- lm(age ~ circumference,
              data = Orange)
# 查看模型配適結果
summary(Orange.lm)

mtcars

