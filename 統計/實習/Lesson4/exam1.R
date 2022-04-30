test<-read.csv("D:\\中山大學\\統計學\\實習\\Lesson2\\BankChurners.csv")

#B084020034_謝旻臻
#B084020042_洪瑀軒

#第一題
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

a = test$Total_Trans_Amt
r <- mean.range2(a);r

#第二題
z_score=function(x){
  return((x-mean(x))/sd(x))
}
z = z_score(test$Credit_Limit)
pnorm(z, sd = 2)


#第三題
z_score=function(x){
  return((x-mean(x))/sd(x))
}
month = (test$Months_on_book < 30)
z_score(month)

#第四題
mean.range3 = function(x, alpha=0.1) {
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
man = (test$Gender == 'M')
mean.range3(man)
