library(dplyr)
# 
# 1e7
# 10^7
# 1e-07
# 10^(-7)

babies = read.table("D:\\中山大學\\統計學\\實習\\Lesson6\\babies.txt",header = T)
test<-read.csv("D:\\中山大學\\統計學\\實習\\Lesson6\\BankChurners_new.csv")

bwt = babies$bwt #初生嬰兒體重(盎司)
summary(bwt)
sd(bwt)

###-------------母體標準差已知_z檢定-------------
#用one.sample.z函數對mu做z檢定，會得出z值和P-value
#H0 : mu = 120 
#H1 : mu != 120，此例採雙尾檢定
#install.packages("asbio")

asbio::one.sample.z(bwt , null.mu = 120, sigma = 18.236, alternative = "two.sided", conf = 0.95) 
#c("two.sided", "less", "greater")
#p_value = 0.4146369，大於0.05，因此不拒絕H0。


###-------------母體標準差未知_t檢定_小樣本-------------
#用t.test()小樣本
#H0 : mu = 30 
#H1 : mu != 30 
x <- sample(1:100,10) 
t.test(x, null.mu = 30, alternative = "two.sided", conf = 0.95)


#樣本數夠大，可以直接用one.sample.z
#H0 : mu = 118 
#H1 : mu != 118
asbio::one.sample.z(bwt , null.mu = 118, sigma = sd(bwt), alternative = "two.sided", conf = 0.95)


###-------------母體變異數檢定_卡方-------------
#H0 : 變異數 = 332.5  
#H1 : 變異數 != 332.5
#install.packages("EnvStats")
EnvStats::varTest(bwt , alternative = "two.sided" , sigma.squared = 332.5,
                  conf.level = 0.95)

##自己寫
n = length(bwt) #樣本數
sigma.square = 332.5 #母體變異數
S.square = var(bwt) #樣本變異數
test.stat = (n - 1)*S.square / sigma.square #卡方檢定值
c1 = qchisq(0.025, n - 1) #卡方分配左尾臨界值 alpha/2
c2 = qchisq(0.975, n - 1) #卡方分配右尾臨界值 1-alpha/2
cat("卡方檢定值 = ", test.stat, "\n")
cat("左、右尾臨界值：", c1, ", ", c2, "\n")
if( test.stat < c1 || test.stat > c2 ) {
    cat("拒絕 Ho! \n")
} else {
    cat("不拒絕 Ho \n")
}
#計算p-value
if (S.square < sigma.square ){
    p.value = 2*pchisq(test.stat, n - 1)
} else {
    p.value = 2*(1 - pchisq(test.stat, n - 1))
}

cat("P-value = ", p.value, "\n")


###-------------母體比例檢定-------------
#(假設)新聞上報導有 1/5 的台北市民擁有三張的信用卡
#我們從台北市隨機抽出的150人中發現有46人有三張的信用卡。
#檢定新聞是否為真?

# H0 : p = 1/5
# H1 : p != 1/5

binom.test(x = 46, n = 150, p = 1/5, alternative = "two.sided",conf.level = 0.95)

###-------------練習(用上面的bwt)-------------
#t
#H0 : mu <= 120
#H1 : mu > 120
asbio::one.sample.z(bwt , null.mu = 120, sigma = sd(bwt), alternative = "greater", conf = 0.95)

#卡方
#H0 : 變異數 <= 300 
#H1 : 變異數 > 300 
EnvStats::varTest(bwt , alternative = "greater" , sigma.squared = 300,
                  conf.level = 0.95)

n = length(bwt) #樣本數
sigma.square = 300 #母體變異數
S.square = var(bwt) #樣本變異數
test.stat = (n - 1)*S.square / sigma.square #卡方檢定值
c1 = qchisq(0.025, n - 1) #卡方分配左尾臨界值 alpha/2
c2 = qchisq(0.975, n - 1) #卡方分配右尾臨界值 1-alpha/2
cat("卡方檢定值 = ", test.stat, "\n")
cat("左、右尾臨界值：", c1, ", ", c2, "\n")
if( test.stat < c1 || test.stat > c2 ) {
  cat("拒絕 Ho! \n")
} else {
  cat("不拒絕 Ho \n")
}

#比例

#(假設)新聞上報導今年的新生兒體重 > 130 盎司的嬰兒超過 1/5
#請問依照我們目前的資料(BWT)，檢定新聞是否為真?

#H0 : p <= 1/5
#H1 : p > 1/5

length(bwt)
length(bwt[bwt>130])

binom.test(x = length(bwt[bwt>130]), n = length(bwt), p = 1/5, alternative = "greater",conf.level = 0.95)


###-------------考試，用我們給的資料集BankChurners的Months_on_book欄位(客戶加入銀行的時間)-------------


#t (50%)

#H0 : mu > 37
#H1 : mu <= 37

x = test$Months_on_book
asbio::one.sample.z(x , null.mu = 37, sigma = sd(x), alternative = "less", conf = 0.95)

#卡方_檢驗母體標準差 (50%) 不要用套件

#H0 : 變異數 <= 60 
#H1 : 變異數 > 60

x = test$Months_on_book
n = length(x) #樣本數
sigma.square = 60 #母體變異數
S.square = var(x) #樣本變異數
test.stat = (n - 1)*S.square / sigma.square #卡方檢定值
#c1 = qchisq(0.025, n - 1) #卡方分配左尾臨界值 alpha/2
c2 = qchisq(0.95, n - 1) #卡方分配右尾臨界值 1-alpha/2
cat("卡方檢定值 = ", test.stat, "\n")
cat("右尾臨界值：", c2, "\n")
if(test.stat > c2 ) {
  cat("拒絕 Ho! \n")
} else {
  cat("不拒絕 Ho \n")
}

if (S.square < sigma.square ){
  p.value = pchisq(test.stat, n - 1)
} else {
  p.value = (1 - pchisq(test.stat, n - 1))
}

cat("P-value = ", p.value, "\n")
##問題

#男性的信用卡額度是否真的比女性還高，要包含檢定分析，並嘗試找出可能的原因。


#教育程度為大學以上的客戶，是否交易次數會比較高，要包含檢定分析，並嘗試找出可能的原因。

