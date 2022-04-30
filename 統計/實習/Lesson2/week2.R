library(dplyr)
test<-read.csv("C:/Users/User/Desktop/BankChurners.csv") #匯入
str(test)
class(test)

write.table(test,file="haha.csv",sep=",",row.names = F,col.names = T) #匯出

education_level = unique(test$Education_Level)
length(education_level) #基礎

length(unique(test$Education_Level)) #進階

test$Education_Level %>% unique() %>% length() #%>%

test %>% dplyr::select(CLIENTNUM, Education_Level, Gender) #select

test %>% filter(Customer_Age > 40, Gender == 'M') #filter

test %>% filter(Customer_Age > 40, Gender == 'M') %>% 
  select(CLIENTNUM, Customer_Age, Gender) #filter&select

test %>% filter(Customer_Age > 40, Gender == 'M') %>% 
  select(CLIENTNUM, Customer_Age, Gender) %>% arrange(desc(Customer_Age)) %>% head(5) #arrange

#練習題1：找出年齡最大的100個人，他們的教育程度和性別是甚麼

BankChurners %>% arrange(desc(Customer_Age)) %>% select(CLIENTNUM, Education_Level, Gender, Customer_Age) %>% head(100)

#練習題2：找出教育程度大學以上且結過婚的男性，他的收入是多少，依照年齡由小排到大，列出前100個

BankChurners %>% filter(Education_Level == 'College' | Education_Level == 'Graduate' | Education_Level == 'Doctorate', 
                        Gender == 'M', Marital_Status == 'Married') 
                        %>% arrange(desc(Customer_Age)) %>% select(Income_Category) %>% head(100)

test %>% group_by(Customer_Age)#group_by

test %>% summarise(平均年齡 = mean(Customer_Age),人數 = n()) #summarise
test %>% group_by(Customer_Age) %>% summarise(平均家屬人數 = mean(Dependent_count)) #group_by & summarise

#練習題3

BankChurners %>% group_by(Education_Level, Income_Category) %>% summarize(平均信用卡額度 = mean(Credit_Limit), 人數 = n())

BankChurners %>% mutate(未知 = (paste("Education_Level","Education_Level") )) %>% head(5) #mutate

#練習題4：新增一個欄位，顯示平均交易金額(提示：總金額除以總次數)

BankChurners %>% mutate(平均交易金額 = (Total_Trans_Amt / Total_Trans_Ct)) %>% head(5) %>% View()

ggplot(BankChurners, aes( x = Total_Trans_Ct, y = Total_Trans_Amt, color = Attrition_Flag)) + 
  labs(x ="總交易次數" , y = "總交易金額" )+geom_point()
