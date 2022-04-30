packages = c("dplyr","ggplot2","data.table","BSDA","ggpubr")
existing = as.character(installed.packages()[,1])
for(pkg in packages[!(packages %in% existing)]) install.packages(pkg)
library(data.table)
library(dplyr)
library(ggplot2)
library(ggpubr)
library(BSDA)
data <- fread("D:/BankChurners_new.csv")

a<- data %>% filter(Attrition_Flag == 'Attrited Customer')
b<- data %>% filter(Attrition_Flag == 'Existing Customer')
aless<-a %>% filter(Contacts_Count_12_mon < 3);
bless<-b %>% filter(Contacts_Count_12_mon < 3);
amore<-a %>% filter(Contacts_Count_12_mon >= 3);
bmore<-b %>% filter(Contacts_Count_12_mon >= 3);
nrow(a)#Attrited Customer的數量
nrow(b)#Existing Customer的數量
nrow(aless)
nrow(bless)
nrow(amore)
nrow(bmore)
x <- matrix(c(nrow(a), nrow(aless), nrow(b), nrow(bless)), nrow = 2, ncol = 2, byrow = FALSE);x
y<-matrix(c(nrow(a), nrow(amore), nrow(b), nrow(bmore)), nrow = 2, ncol = 2, byrow = FALSE);y
prop.test(x, alternative = "greater")
#h1:attrited的Contacts_Count_12_mon < 3之人數比例>existing的Contacts_Count_12_mon < 3之人數比例
#拒絕h0
prop.test(y, alternative = "less")
#h1:attrited的Contacts_Count_12_mon >= 3之人數比例<existing的Contacts_Count_12_mon >= 3之人數比例
#拒絕h0