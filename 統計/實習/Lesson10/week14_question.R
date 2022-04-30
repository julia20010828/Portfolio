#week14
library(ggplot2)
library(MASS)
library(tidyr)

##卡方適合度
# H0 : 資料分配符合期望值(骰子是公正的)
# H1 : 資料分配不符合期望值(骰子不公正)

#檢驗骰子是否公正(機率是否為 1/6)
set.seed(666)
x = factor(sample.int(6,size = 600,replace = T))
ggplot(data.frame(x=x), aes(x)) + geom_bar()
table(x)
chisq.test(table(x))
#p值>0.05，不拒絕h0，骰子公正

# 若我們想要知道特定的機率，也可以在chisq.test函數裡面調整
# A、B、C 三類型的出現次數
y = c(93, 156, 87)

# 檢定比例是否為 1:2:1
chisq.test(y, p = c(1/4, 1/2, 1/4))

#剛剛的骰子也可以寫成
chisq.test(table(x), p = c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6))


##卡方獨立性 
#01、檢定學歷和收入之間的關係
# H0 : 變數之間互相獨立(學歷收入互相獨立)
# H1 : 變數之間不互相獨立(學歷收入互相不獨立)
r1 = c(8,10,9)
r2 = c(7,17,6)
r3 = c(5,15,23)
x2 = rbind(r1,r2,r3)
colnames(x2) <- c("高","中","低")
row.names(x2) <- c("研究所","大專","高中")
View(x2)
chisq.test(x2)

#02、檢定性別與吸菸習慣之間的關係
survey.clean = na.omit(subset(survey, select = c(Smoke, Sex)))
head(survey.clean)
ggplot(survey.clean, aes(x = Smoke, fill = Sex)) + geom_bar(position = "dodge")

#不吸菸（Never）、偶爾（Occas）、時常（Regul）與重度（Heavy）
# 建立吸菸與性別的列聯表
smoke.table = table(survey.clean$Smoke, survey.clean$Sex)
smoke.table
# 檢定吸菸與性別是否相關
chisq.test(smoke.table)
#p = 0.3139，>0.05，不拒絕H0，沒有證據顯示性別與吸菸習慣之間有相關。

##卡方同質性檢定
#H0 : 兩城市抽菸比例一致
#H1 : 兩城市抽菸比例不一致
taipei = c(205,890,1870)
kaohsiung = c(124,748,1560)
x1 = rbind(taipei,kaohsiung)

colnames(x1) <- c("經常抽菸","偶爾抽菸","不抽菸")
chisq.test(x1)
#P= 0.02121 ，< 0.05 ，拒絕H0，得知兩個城市居民抽菸類別比例不一致。

#練習，大家可以先畫圖了解資料，再做檢定
#匯入example2.csv，婚姻和性別的關係

example2 = data.table::fread("D:\\中山大學\\統計學\\實習\\Lesson10\\example2.csv",encoding = "UTF-8")
table(example2) #列連表
ggplot(data = example2, aes(x=性別, fill = 婚姻)) + geom_bar(position = "dodge")

#檢定婚姻和性別是否相關
chisq.test(table(example2))
#<0.05 性別跟婚姻狀況有關

#考試 -> 1人一組

#01(40%)
#假設某社團社員血型人數如下：
# A = 20、AB = 15、B = 30、O = 25
#檢定 A、AB、B、O 四種血型的人數比例是否相同
A = 20
AB = 15
B = 30
O = 25
x1 = rbind(A, AB, B, O)
colnames(x1) <- c("人數")
chisq.test(x1)
#>0.05 不拒絕H0 四種血型的人數比例相同

#02 (20%)
#承上題，若我們想檢定不同的血型人數比例 : A 型佔 40%、AB 型佔 40%、B型佔10%、O 型佔 10%，其p值?
y = c(20, 15, 30, 25)
chisq.test(y, p = c(2/5, 2/5, 1/10, 1/10))
#<0.05 拒絕H0 p-value < 2.2e-16

#03(40%)
#匯入example1.csv檔，檢定不同地區的人其滿意度是否有差異
example1 = data.table::fread("D:\\中山大學\\統計學\\實習\\Lesson10\\example1.csv",encoding = "UTF-8")
table(example1)
ggplot(data = example1, aes(x=地區, fill = 滿意度)) + geom_bar(position = "dodge")

北部 = c(125, 35)
中部 = c(159, 83)
南部 = c(36, 76)
x1 = rbind(北部, 中部, 南部)
colnames(x1) <- c("滿意","不滿意")
table(x1)
chisq.test(x1)
#<0.05 拒絕H0 不同地區的人其滿意度有差異

#教Relevel()
library(Epi)
ff <- factor(c("Bear","Bear","Crocodile","Snake","Crocodile","Bear"))
ff
## A grouping table
(gg <- data.frame(Animal = c("Bear","Whale","Crocodile","Snake","Eagle"),
                  Class = c("Mammal","Mammal","Reptile","Reptile","Bird")))

str(gg)
Relevel(ff, gg, xlevels = FALSE)
Relevel(ff, gg )

aa = factor(c("0-10","10-20","20-30","30-40","40-50","50-70","70-100"))
bb = data.frame(年齡 = c("0-10","10-20","20-30","30-40","40-50","50-70","70-100"),
                  階段 = c("幼年","青少年","青年","壯年","壯年","壯年","老年"))
Relevel(aa, bb)
aa = Relevel(aa, bb);aa

#教gather()
# gather(data, key = "key", value = "value", ..., na.rm = FALSE,
#        convert = FALSE, factor_key = FALSE)
stu<-data.frame(grade=c("A","B","C","D","E"), female=c(5, 4, 1, 2, 3), male=c(1, 2, 3, 4, 5));stu
gather(stu, key = gender, value = count, -grade)

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
great_nba_teams <- data.frame(team_name, wins, losses)
gather(great_nba_teams, key = variable_names, value = values, wins, losses)


gather(great_nba_teams, key = variable_names, value = values, -team_name)

#題目
#1.探討教育程度(Education_Level )和婚姻狀況(Marital_Status)的關係
#2.探討收入(Income_Category)和客戶類型(Attrition_Flag)的關係

