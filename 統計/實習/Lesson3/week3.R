#資料視覺化
require(datasets)

##Base Plotting System

#直方圖(Histogram)，各個月份(Month)有多少筆資料
hist(x=airquality$Month, 
     main="Histogram of Month",         
     xlab="Month",                     
     ylab="Frequency" ) 

#箱型圖(Box Plot)，不同月份的臭氧(Ozone)數值的分布情況
boxplot(formula = Ozone ~ Month, # Y ~ X (代表X和Y軸要放的數值) 
        data = airquality,       
        xlab = "Month",          
        ylab = "Ozone (ppb)",    
        col ="gray")        

#練習1，用資料集BankChurners，畫出各個顧客年齡的人數(直方圖)
test<-read.csv("D:\\中山大學\\統計學\\實習\\Lesson2\\BankChurners.csv")
Hist = hist(test$Customer_Age,
            main = "顧客年齡",
            xlab = "Month",
            ylab = "人數")
#練習2，用資料集BankChurners，畫出信用卡額度和性別的分布情形(箱形圖)


#散布圖(Scatter Plot)，當我們想要看月份(Month)和氣溫(Temp)之間的關係-> 兩個數值型態的資料
plot(x=airquality$Month,            
     y=airquality$Temp,             
     main="Month to Temperature",   
     xlab="Month(1~12)",            
     ylab="Temperature(degrees F)") 

#or 臭氧(Ozone)和風(Wind)之間的關係?

plot(x=airquality$Ozone,      
     y=airquality$Wind,      
     main="Ozone to Wind",    
     xlab="Ozone(ppb)",       
     ylab="Wind(mph)"         
)


#練習3，用資料集BankChurners，總交易金額和總交易次數的散布圖
plot(x=test$Total_Trans_Amt,      
     y=test$Total_Trans_Ct,      
     main="總交易金額和總交易次數",    
     xlab="Total_Trans_Amt(ppb)",       
     ylab="Total_Trans_Ct(mph)"         
)


# 進階_修飾畫布 
#step1建立一個畫布，上面已經有一張散布圖(Ozone to Wind)
plot(x=airquality$Ozone,
     y=airquality$Wind,
     main="Ozone to Wind",
     xlab="Ozone(ppb)",
     ylab="Wind(mph)",
     pch=16                  # 點的圖形
)
#step2 修飾畫布
# 現在我們要在這張圖片中，把5月的資料點用藍色標註上去
May_data <- airquality[airquality$Month==5, ]   # 找出5月的資料
# 標上藍色的點
points(x=May_data$Ozone,                       
       y=May_data$Wind, 
       pch=16,                  # 點的圖形
       col="blue")              # 顏色

# 同理，也可以把8月的資料點用紅色標註上去
Aug_data <- airquality[airquality$Month==8, ]   # 找出8月的資料
# 標上紅色的點
points(x=Aug_data$Ozone, 
       y=Aug_data$Wind, 
       pch=16,               # 點的圖形
       col="red")            # 顏色

# 在右上角做出標示
legend("topright",                                # 表示在右上角
       pch = 1,                                   # pch代表點的圖案
       col = c("blue", "red", "black"),           # col代表顏色 
       legend = c("May", "August", "Other Month") # 顏色所對應的名稱
)


# 同時想畫兩張圖par()，c(1,2)表示建立一個1x2的空間，用來呈現後續的圖
par(mfrow = c(1,2)) 
# 第一張圖
plot(airquality$Wind, airquality$Ozone, main = "Wind to Ozone") 
# 第二張圖
plot(airquality$Solar.R, airquality$Ozone, main = "Solar.R to Ozone")



##ggplot
#install.packages("ggplot2")#下載ggplot2
library(ggplot2)

#直方圖
ggplot(data=airquality)+
    geom_histogram(aes(x=Ozone, fill = as.factor(Month) )) +  #用aes()描繪圖內的各種屬性，根據月份顯示不同的顏色
    #facet_grid(.~Month)  #每個月份各畫一張直方圖，用facet()，Month放在右邊，故圖片以水平方向呈現
facet_grid(Month~.) #垂直

#直方圖的另一種寫法
qplot(x=Ozone,                      
      data=airquality,              
      geom="histogram",             # 直方 = histogram，散布 = point，箱型 = boxplot
      main = "Histogram of Ozone",  
      xlab="Ozone(ppb)",            
      binwidth = 25,                # 每25單位為一區隔
      fill= as.factor(Month)        # 以顏色標註月份，複合式的直方圖
)

#練習4
#用資料集BankChurners，畫出年齡的直方圖，依照性別各畫一張圖，且要顯示不同的顏色，
ggplot(data=test)+
  geom_histogram(aes(x=Customer_Age, fill = as.factor(Gender) )) +  #用aes()描繪圖內的各種屬性，根據月份顯示不同的顏色
  #facet_grid(.~Gender)  #每個月份各畫一張直方圖，用facet()，Month放在右邊，故圖片以水平方向呈現
  facet_grid(Gender~.)
#長條圖
airbar =  ggplot(airquality , aes(x=Month ,fill = as.factor(Month))) + geom_bar() + #先畫長條圖
    labs(title = "月份")
airbar

#圓餅圖
airpie =  ggplot(airquality , aes(x="" ,fill = as.factor(Month))) + geom_bar() + #先畫長條圖
    labs(title = "月份") +
    coord_polar(theta = "y") # 沿著Y，轉軸成圓餅圖
airpie
#練習5
#用資料集BankChurners，畫出性別的圓餅圖
airbar =  ggplot(test , aes(x=Gender ,fill = as.factor(Gender))) + geom_bar() + #先畫長條圖
  labs(title = "性別")
airbar

airpie =  ggplot(test , aes(x="" ,fill = as.factor(Gender))) + geom_bar() + #先畫長條圖
  labs(title = "性別") +
  coord_polar(theta = "y") # 沿著Y，轉軸成圓餅圖
airpie

#箱型圖_臭氧濃度和月份的箱型圖
air_box = ggplot(airquality, aes(x = Month , y = Ozone , fill = as.factor(Month) )) +
    geom_boxplot()
air_box

#練習6_信用卡額度、收入類別 箱型圖
air_box = ggplot(test, aes(x = Credit_Limit , y = Income_Category , fill = as.factor( Income_Category ) )) +
  geom_boxplot()+
  coord_flip() #轉方向
air_box

#散布圖_臭氧濃度和氣溫
ggplot(data=airquality) +   
    geom_point(aes(x=Temp , y=Ozone, color = as.factor(Month))) + 
    geom_smooth(aes(x=Temp,y=Ozone)) +   # 用geom_smooth()加上趨勢線
    labs(x="Temp", y="Ozone")

#練習7，總交易金額和總交易次數的散布圖，顏色以客戶類型為區分
ggplot(data=test) +   
  geom_point(aes(x=Total_Trans_Amt , y=Total_Trans_Ct, color = as.factor(Gender))) + 
  geom_smooth(aes(x=Total_Trans_Amt,y=Total_Trans_Ct)) +   # 用geom_smooth()加上趨勢線
  labs(x="Total_Trans_Amt", y="Total_Trans_Ct")


###做成gif
#install.packages("gifski")
library(gifski)
#install.packages("gganimate")
library(gganimate)
library(dplyr)
library(ggplot2)
#install.packages("magick")
library(magick)

gif=airquality %>%na.omit() %>%  ggplot(aes(x=Temp,y=Wind,size=Solar.R))+geom_point() +
    labs(title = 'Month: {frame_time}', x = '溫度', y = '風速') +
    transition_time(Month)+ 
    ease_aes("cubic-in-out") #以什麼方式移動
animate(gif, duration = 10, fps=10, renderer = magick_renderer()) #duration = 動畫的長度，fps=幀速率
#renderer = 獲取圖像並將它們組合成動畫

#https://www.r-bloggers.com/2021/01/ease_aes-demo/