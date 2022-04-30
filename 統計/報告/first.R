library(dplyr)
library(magrittr)
library(ggplot2)
library(ggpubr)
#data=read.csv("D:/User/Desktop/statistics practice/week2/BankChurners.csv")
data=read.csv("D:/中山大學/統計學/實習/Lesson2/BankChurners.csv")

# 性別(Gender)對於過去12個月總交易金額(Total_Trans_Amt)的區間估計

m_Amt=data %>% filter(Gender=="M") %>% select(Total_Trans_Amt)
f_Amt=data %>% filter(Gender=="F") %>% select(Total_Trans_Amt)

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

divorced=data %>%
  filter(Marital_Status=="Divorced") %>%
  select(Marital_Status, Total_Trans_Amt, Total_Trans_Ct)
married=data %>%
  filter(Marital_Status=="Married") %>%
  select(Marital_Status, Total_Trans_Amt, Total_Trans_Ct)
single=data %>%
  filter(Marital_Status=="Single") %>%
  select(Marital_Status, Total_Trans_Amt, Total_Trans_Ct)

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

a=var.range(divorced$Total_Trans_Amt)
sqrt(a)
b=var.range(married$Total_Trans_Amt)
sqrt(b)
c=var.range(single$Total_Trans_Amt)
sqrt(c)

#Total_Trans_Amt區間
mean.range2(m_Amt$Total_Trans_Amt)
mean.range2(f_Amt$Total_Trans_Amt)

#信賴區間圖
ggerrorplot(test, x = "Gender", y = "Total_Trans_Amt", 
            desc_stat = "mean_ci", color = "Gender" , palette="uchicago", size=.9) + 
  labs(x="Gender", y = "Total_Trans_Amt", title= "男女總交易金額 信賴區間圖") + 
  theme_minimal() + theme(axis.text.x = element_text(angle=0))


# 性別(Gender)對於全部的交易次數(Total_Trans_Ct)的區間估計

m_Ct=data %>% filter(Gender=="M") %>% select(Total_Trans_Ct)
f_Ct=data %>% filter(Gender=="F") %>% select(Total_Trans_Ct)

#Total_Trans_Ct區間
mean.range2(m_Ct$Total_Trans_Ct)
mean.range2(f_Ct$Total_Trans_Ct)

#信賴區間圖
ggerrorplot(test, x = "Gender", y = "Total_Trans_Ct", 
            desc_stat = "mean_ci", color = "Gender" , palette="uchicago", size=.9) + 
  labs(x="Gender", y = "Total_Trans_Ct", title= "男女總交易次數 信賴區間圖") + 
  theme_minimal() + theme(axis.text.x = element_text(angle=0))


#以年齡為區間，比較各性別的金額與次數
#男性總交易金額
data %>% filter(Gender == 'M') %>%  group_by(Customer_Age) %>% summarise(Total_Trans_Amt = mean(Total_Trans_Amt)) %>% 
  ggplot(aes( x = Customer_Age, y= Total_Trans_Amt ,fill = Customer_Age)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="年齡" , y = "男性平均總交易金額" )

#男性總交易次數
data %>% filter(Gender == 'M') %>%  group_by(Customer_Age) %>% summarise(Total_Trans_Ct = mean(Total_Trans_Ct)) %>% 
  ggplot(aes( x = Customer_Age, y= Total_Trans_Ct ,fill = Customer_Age)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="年齡" , y = "男性平均總交易次數" )

#女性總交易金額
data %>% filter(Gender == 'F') %>%  group_by(Customer_Age) %>% summarise(Total_Trans_Amt = mean(Total_Trans_Amt)) %>% 
  ggplot(aes( x = Customer_Age, y= Total_Trans_Amt ,fill = Customer_Age)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="年齡" , y = "女性平均總交易金額" )

#女性總交易次數
data %>% filter(Gender == 'F') %>%  group_by(Customer_Age) %>% summarise(Total_Trans_Ct = mean(Total_Trans_Ct)) %>% 
  ggplot(aes( x = Customer_Age, y= Total_Trans_Ct ,fill = Customer_Age)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="年齡" , y = "女性平均總交易次數" )

#以婚姻為區間，比較各性別的金額與次數
#男性總交易金額
data %>% filter(Gender == 'M') %>%  group_by(Marital_Status) %>% summarise(Total_Trans_Amt = mean(Total_Trans_Amt)) %>% 
  ggplot(aes( x = Marital_Status, y= Total_Trans_Amt ,fill = Marital_Status)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="婚姻狀況" , y = "男性平均總交易金額" )

#男性總交易次數
data %>% filter(Gender == 'M') %>%  group_by(Marital_Status) %>% summarise(Total_Trans_Ct = mean(Total_Trans_Ct)) %>% 
  ggplot(aes( x = Marital_Status, y= Total_Trans_Ct ,fill = Marital_Status)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="婚姻狀況" , y = "男性平均總交易次數" )

#女性總交易金額
data %>% filter(Gender == 'F') %>%  group_by(Marital_Status) %>% summarise(Total_Trans_Amt = mean(Total_Trans_Amt)) %>% 
  ggplot(aes( x = Marital_Status, y= Total_Trans_Amt ,fill = Marital_Status)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="婚姻狀況" , y = "女性平均總交易金額" )

#女性總交易次數
data %>% filter(Gender == 'F') %>%  group_by(Marital_Status) %>% summarise(Total_Trans_Ct = mean(Total_Trans_Ct)) %>% 
  ggplot(aes( x = Marital_Status, y= Total_Trans_Ct ,fill = Marital_Status)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="年齡" , y = "女性平均總交易次數" )

#不分性別總交易金額
data %>% group_by(Marital_Status) %>% summarise(Total_Trans_Amt = mean(Total_Trans_Amt)) %>% 
  ggplot(aes( x = Marital_Status, y= Total_Trans_Amt ,fill = Marital_Status)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="婚姻狀況" , y = "平均總交易金額" )

#不分性別總交易次數
data %>% group_by(Marital_Status) %>% summarise(Total_Trans_Ct = mean(Total_Trans_Ct)) %>% 
  ggplot(aes( x = Marital_Status, y= Total_Trans_Ct ,fill = Marital_Status)) + 
  geom_bar(position="dodge", stat="identity")+
  labs(x ="婚姻狀況" , y = "平均總交易次數" )


#區間估計
ci = function(x, alpha=0.05) {
  n = length(x) # n = 樣本數
  S = sqrt(var(x)) # S 即為標準差的點估計
  r = qt(1-alpha/2, df=n-1)
  range = c(r*S/sqrt(n))
  return(range)
}
#男性婚姻狀況對過去 12 個月總交易金額
test_ci = data %>% filter(Gender == 'M') %>% group_by(Marital_Status) %>% summarise(mean = mean(Total_Trans_Amt),ci = ci(Total_Trans_Amt)) 
test_ci %>% ggplot(aes(y = mean, x = Marital_Status))+
  geom_point(size = 5, alpha = 0.5)+
  geom_errorbar(width = 0.1, aes(ymin = mean-ci, ymax = mean+ci), colour = "darkblue")+ 
  labs(x = "婚姻狀況",y = "過去 12 個月總交易金額", title ="男性婚姻狀況對過去 12 個月總交易金額", subtitle = "區間估計", caption="") +
  ylim(1200, 1800)
#女性婚姻狀況對過去 12 個月總交易金額
test_ci = data %>% filter(Gender == 'F') %>% group_by(Marital_Status) %>% summarise(mean = mean(Total_Trans_Amt),ci = ci(Total_Trans_Amt)) 
test_ci %>% ggplot(aes(y = mean, x = Marital_Status))+
  geom_point(size = 5, alpha = 0.5)+
  geom_errorbar(width = 0.1, aes(ymin = mean-ci, ymax = mean+ci), colour = "darkred")+ 
  labs(x = "婚姻狀況",y = "過去 12 個月總交易金額", title ="女性婚姻狀況對過去 12 個月總交易金額", subtitle = "區間估計", caption="") +
  ylim(500, 2500)
#男性婚姻狀況對過去 12 個月總交易次數
test_ci = data %>% filter(Gender == 'M') %>% group_by(Marital_Status) %>% summarise(mean = mean(Total_Trans_Ct),ci = ci(Total_Trans_Ct)) 
test_ci %>% ggplot(aes(y = mean, x = Marital_Status))+
  geom_point(size = 5, alpha = 0.5)+
  geom_errorbar(width = 0.1, aes(ymin = mean-ci, ymax = mean+ci), colour = "darkblue")+ 
  labs(x = "婚姻狀況",y = "過去 12 個月總交易次數", title ="男性婚姻狀況對過去12個月總交易次數", subtitle = "區間估計", caption="") +
  ylim(10, 45)
#女性婚姻狀況對過去 12 個月總交易次數
test_ci = data %>% filter(Gender == 'F') %>% group_by(Marital_Status) %>% summarise(mean = mean(Total_Trans_Ct),ci = ci(Total_Trans_Ct)) 
test_ci %>% ggplot(aes(y = mean, x = Marital_Status))+
  geom_point(size = 5, alpha = 0.5)+
  geom_errorbar(width = 0.1, aes(ymin = mean-ci, ymax = mean+ci), colour = "darkred")+ 
  labs(x = "婚姻狀況",y = "過去 12 個月總交易次數", title ="女性婚姻狀況對過去12個月總交易次數", subtitle = "區間估計", caption="") +
  ylim(10, 45)