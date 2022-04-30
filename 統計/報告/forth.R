data <- fread("D:\\中山大學\\統計學\\實習\\Lesson6\\BankChurners_new.csv")

library(data.table)
library(dplyr)
library(ggplot2)
library(ggpubr)
library(BSDA)
library(car)

Single = data %>% filter(Marital_Status == 'Single')
Married = data %>% filter(Marital_Status == 'Married')
Divorced = data %>% filter(Marital_Status == 'Divorced')

leveneTest(Total_Trans_Amt ~ Gender,data)
leveneTest(Total_Trans_Amt ~ Gender,Single)
leveneTest(Total_Trans_Amt ~ Gender,Married)
leveneTest(Total_Trans_Amt ~ Gender,Divorced)
#------------------------------------------------------------------------------
Female = data %>% filter(Gender=='F')
Male = data %>% filter(Gender=='M')

leveneTest(Total_Trans_Amt ~ Marital_Status, data)
leveneTest(Total_Trans_Amt ~ Attrition_Flag, data)
leveneTest(Total_Trans_Amt ~ Marital_Status,Female)
leveneTest(Total_Trans_Amt ~ Marital_Status,Male)
#------------------------------------------------------------------------------
#總交易金額跟信用卡種類(有關係)
leveneTest(Total_Trans_Amt ~ Card_Category,data)
oneway.test(Total_Trans_Amt ~ Card_Category, data = data, var.equal = TRUE)
aov.Card_Category <- aov(Total_Trans_Amt ~ Card_Category, data = data)
summary(aov.Card_Category)

#總交易金額對收入(沒關係)
leveneTest(Total_Trans_Amt ~ Income_Category,data)
aov.Income_Category <- aov(Total_Trans_Amt ~ Income_Category, data = data)
summary(aov.Income_Category)

#總交易金額跟Attrition_Flag(有關係)
leveneTest(Total_Trans_Amt ~ Attrition_Flag,data)
oneway.test(Total_Trans_Amt ~ Attrition_Flag, data = data, var.equal = TRUE)
aov.Attrition_Flag <- aov(Total_Trans_Amt ~ Attrition_Flag, data = data)
summary(aov.Attrition_Flag)

#卡片額度跟卡片種類(有關係)
leveneTest(Credit_Limit ~ Card_Category,data)
aov.Card_Category <- aov(Credit_Limit ~ Card_Category, data = data)
summary(aov.Card_Category)

aov.Card_Category <- aov(Total_Trans_Ct ~ Card_Category, data = data)
summary(aov.Card_Category)
#------------------------------------------------------------------------------
interaction.plot(data$Gender, data$Marital_Status, data$Total_Trans_Amt)

fm <- aov(Total_Trans_Amt ~ Gender * Marital_Status, data = data)
summary(fm)

fm <- aov(Total_Trans_Amt ~ Attrition_Flag + Card_Category, data = data)
summary(fm)
