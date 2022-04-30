test<-read.csv("D:\\中山大學\\統計學\\實習\\Lesson6\\BankChurners_new.csv")
#箱型圖(Box Plot)，不同月份的臭氧(Ozone)數值的分布情況
boxplot(formula = Total_Trans_Ct ~ Gender, # Y ~ X (代表X和Y軸要放的數值) 
        data = test,       
        xlab = "Gender",          
        ylab = "Total_Trans_Ct",    
        col ="gray")

boxplot(formula = Total_Relationship_Count ~ Card_Category, # Y ~ X (代表X和Y軸要放的數值) 
        data = test,       
        xlab = "Card_Category",          
        ylab = "Total_Relationship_Count",    
        col ="gray")

boxplot(formula = Credit_Limit ~ Income_Category, # Y ~ X (代表X和Y軸要放的數值) 
        data = test,       
        xlab = "Income_Category", 
        ylab = "Credit_Limit",          
        col ="gray")

#散布圖(Scatter Plot)，當我們想要看月份(Month)和氣溫(Temp)之間的關係-> 兩個數值型態的資料
plot(x=test$Gender,            
     y=test$Total_Trans_Ct,             
     main="Gender to Total_Trans_Ct",   
     xlab="Gender",            
     ylab="Total_Trans_Ct") 
