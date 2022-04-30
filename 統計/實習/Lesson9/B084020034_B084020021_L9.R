#Q1不同飼料是否效果不同? 
# H0: 飼料1 = 飼料2 = 飼料3 = 飼料4。
# HA: 餵食不同飼料的肉雞平均體重不完全相同。

chicken <- read.table(header = TRUE, text = "
Feed Weight
F1 61.8
F1 65.1
F1 61.7
F1 63.3
F2 78.8
F2 79.5
F2 76.0
F2 73.4
F2 77.3
F3 70.5
F3 72.6
F3 71.7
F3 72.0
F3 71.1
F4 60.3
F4 63.8
F4 64.1
F4 61.4
F4 60.9") 
names(chicken)  # 指定資料標題。

f1 <- c(61.8, 65.1, 61.7, 63.3)          
f2 <- c(78.8, 79.5, 76, 73.4, 77.3)
f3 <- c(70.5, 72.6, 71.7, 72, 71.1)
f4 <- c(60.3, 63.8, 64.1, 61.4, 60.9)
shapiro.test(f1)
shapiro.test(f2)
shapiro.test(f3)
shapiro.test(f4)
#p-value皆>0.05，皆符合常態分佈

ggplot(chicken, aes(x = Feed, y = Weight)) +
  geom_boxplot(color = "red") +
  geom_jitter(position = position_jitter(0.05))
#箱型圖

library(car)
help(leveneTest)
leveneTest(Weight ~ Feed,data=chicken)
#Pr>0.05，符合相同變異數前提

WF <- aov(Weight ~ Feed, data = chicken)
summary(WF)
#拒絕H0，餵食不同飼料的肉雞平均體重不完全相同成立