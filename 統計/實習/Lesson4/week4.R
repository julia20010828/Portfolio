#test<-read.csv("C:/Users/User/Desktop/BankChurners.csv")
test<-read.csv("D:\\中山大學\\統計學\\實習\\Lesson2\\BankChurners.csv")


##介紹function
# function 寫法  : functionname=function(x,y..){...return(...)}
custom_squared = function(x) {
  squared_x = x^2
  return(squared_x)
}
custom_squared(-3)
custom_squared(-3:3)

#zscore公式
z_score=function(x){
  return((x-mean(x))/sd(x))
}
z_score(1:10)

#dnorm
dnorm(-3, mean = 0, sd = 1)
6
# z_scores <- seq(-3,3,0.01)
# dvalues <- dnorm(z_scores)
# plot(dvalues,
#      xaxt = "n",
#      type = "l",
#      main = "PDF of the Standard Normal",
#      xlab= "Z-score")

seq(-3,3,0.01) %>% dnorm() %>% plot(xaxt = "n",
                                    type = "l",
                                    main = "PDF of the Standard Normal")

# pnorm --> 給定z值計算機率值
pnorm(0, mean = 0, sd = 1, lower.tail = TRUE)# Z是這樣的情況下，機率多少
pnorm(1)
pnorm(1.959964,0,2)

pnorm(1.96,0,1,lower.tail = F) #P(Z>1.96)=1-pnorm(1.96,0,1,lower.tail = T)
pnorm(1.96)

seq(-3,3,0.01) %>% pnorm() %>% plot(xaxt = "n", 
                                    type = "l",
                                    main = "累積分布函數(CDF,Cumulative Distribution Function)曲線",
                                    xlab= "分位數(Quantiles)",
                                    ylab="機率密度(Probability Density)") 

# qnorm --> 給定機率值計算z值
qnorm(0.975, mean = 0, sd = 1, lower.tail = TRUE) #機率佔一定值，他的Z是多少

seq(-3,3,0.01) %>% qnorm() %>% plot(xaxt = "n",
                                    type = "l",
                                    xlab="分位數",
                                    ylab="Z-scores")

#rnorm -->生成符合常態分佈的隨機數
rnorm(10, mean = 0, sd = 1)
rnorm(10)
rnorm(10, 0,1) %>% density() %>% plot()

n1 <- rnorm(10, mean = 50, sd = 10);n1
n2 <- rnorm(100, mean = 50, sd = 10);n2[1:10]
n3 <-  rnorm(10000, mean = 50, sd = 10);n3[1:10]

par(mfrow=c(1,3))
hist(n1, breaks = 5)
hist(n2, breaks = 20)
hist(n3, breaks = 100)

#母體的變異數已知的情況
mean.range = function(x, alpha=0.05, sigma) {
  n = length(x) # n = 樣本數
  mx = mean(x) # mx 即為平均值 mu 的點估計
  r1 = qnorm(alpha/2) # 信賴區間，下半截掉 alpha/2
  r2 = qnorm(1-alpha/2) # 信賴區間，上半截掉 alpha/2
  L1 = mx-r2*sigma/sqrt(n) # 信賴區間下限
  L2 = mx-r1*sigma/sqrt(n) # 信賴區間上限
  range = c(L1, mx, L2) # 信賴區間
}

#母體的變異數未知的情況，用t分布
mean.range2 = function(x, alpha=0.05) {
  n = length(x) # n = 樣本數
  mx = mean(x) # mx 即為平均值 mu 的點估計
  S = sqrt(var(x)) # S 即為標準差的點估計
  r1 = qt(alpha/2, df=n-1) # 信賴區間，下半截掉 alpha/2
  r2 = qt(1-alpha/2, df=n-1) # 信賴區間，上半截掉 alpha/2
  L1 = mx-r2*S/sqrt(n) # 信賴區間下限
  L2 = mx-r1*S/sqrt(n) # 信賴區間上限
  range = c(L1, mx, L2)
  return(range)
}


# 丟銅板 100  次
r <- mean.range2(sample(0:1, 100, replace=T));r
# 練習題：丟骰子1000次
r <- mean.range2(sample(1:6, 1000, replace=T));r

#變異數區間估計 卡方
var.range = function(x, alpha=0.05) {
  n  = length(x) # n = 樣本數
  r1 = qchisq(alpha/2, df=n-1) # 信賴區間，下半截掉 alpha/2
  r2 = qchisq(1-alpha/2, df=n-1) # 信賴區間，上半截掉 alpha/2
  S2  = var(x) # 樣本變異數
  L1 = (n-1)*S2/r2 # 信賴區間下限
  L2 = (n-1)*S2/r1 # 信賴區間上限
  range = c(L1, S2, L2) # 信賴區間
  return(range)
}
vdata=rnorm(3, mean=5, sd=3)
vdata
var.range(vdata)
var(vdata)

##比例的信賴區間
mean.range3 = function(x, alpha=0.05) {
  n = length(x) # n = 樣本數
  proport= as.vector(table(x))
  p = proport[2]/n # mx 即為平均值 mu 的點估計
  r1 = qnorm(alpha/2) # 信賴區間，下半截掉 alpha/2
  r2 = qnorm(1-alpha/2) # 信賴區間，上半截掉 alpha/2
  L1 = p-r2* sqrt(p*(1-p)/n) # 信賴區間下限
  L2 = p-r1*sqrt(p*(1-p)/n) # 信賴區間上限
  range = c(L1, p, L2) # 信賴區間
  return(range)
  
}

d=c(rep(0,88),rep(1,12))
d=sample(d)
mean.range3(d)


library(ggplot2)
#install.packages("ggpubr")
library(ggpubr)
library(dplyr)
# Example1
m_Lim=data %>% filter(Gender=="M") %>% select(Credit_Limit)
f_Lim=data %>% filter(Gender=="F") %>% select(Credit_Limit)

mean.range2 = function(x, alpha=0.05) {
  n = length(x) # n = 樣本數
  mx = mean(x) # mx 即為平均值 mu 的點估計
  S = sqrt(var(x)) # S 即為標準差的點估計
  r1 = qt(alpha/2, df=n-1) # 信賴區間，下半截掉 alpha/2
  r2 = qt(1-alpha/2, df=n-1) # 信賴區間，上半截掉 alpha/2
  L1 = mx-r2*S/sqrt(n) # 信賴區間下限
  L2 = mx-r1*S/sqrt(n) # 信賴區間上限
  range = c(L1, mx, L2)
  return(range)
}
mean.range2(m_Lim$Credit_Limit)
mean.range2(f_Lim$Credit_Limit)

ggerrorplot(test, x = "Gender", y = "Credit_Limit", 
            desc_stat = "mean_ci", color = "Gender" , palette="uchicago", size=.9) + 
  labs(x="Gender", y = "Credit_Limit", title= "男女信用卡額度 信賴區間圖") + 
  theme_minimal() + theme(axis.text.x = element_text(angle=90))

# Example2
test %>% group_by(Customer_Age) %>% summarise(Credit_Limit = mean(Credit_Limit)) %>% 
  ggplot(aes( x = Customer_Age, y= Credit_Limit ,fill = Customer_Age)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="年齡" , y = "平均信用卡額度" )

# Example3
ci = function(x, alpha=0.05) {
  n = length(x) # n = 樣本數
  S = sqrt(var(x)) # S 即為標準差的點估計
  r = qt(1-alpha/2, df=n-1)
  range = c(r*S/sqrt(n))
  return(range)
}

test_ci = test %>% group_by(Marital_Status) %>% summarise(mean = mean(Total_Trans_Amt),ci = ci(Total_Trans_Amt)) 
test_ci %>% ggplot(aes(y = mean, x = Marital_Status))+
  geom_point(size = 5, alpha = 0.5)+
  geom_errorbar(width = 0.1, aes(ymin = mean-ci, ymax = mean+ci), colour = "darkred")+ 
  labs(x = "婚姻狀況",y = "過去 12 個月總交易金額", title ="Example 3", subtitle = "區間估計範例", caption="我在左下角拉") +
  ylim(1200, 1800)
