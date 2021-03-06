######統�?�實�?1#######
##主�?��?��?�種�?
print("hello R")
my_numeric =  42
str(my_numeric)
my_integer = 10L
str(my_integer)
my_logic = TRUE
str(my_logic)
my_character = "universe"
str(my_character)

##常用資�?��?��??
#vector
a = c(5,10,15,20,25) #建�?��?�?��number vector
b = c("Tom", "Henry", "John") #建�?��?�?��character vector
#??��?
a[3]      # Ans: 15           ??�第3?��element
a[1:3]    # Ans: 5 10 15      ??�第1~�?3?��element
a[c(2,4)] # Ans: 10 20        ??�第2??�第4?��element

#?��vector裡�?��?�?���?�要注??��?��?��?��?�「�?��?�?��element?��都??�是?��??��?��?��??
vector1 = c(1, "john", 3) #?��?��??�number??�character??��?�放?��vector�?
str(vector1)                   #R??�自??��?��?�??�element??��?��?��?��?��?��?�character
vector2 = c(T, 3, F )      #logic??�number?��vector裡�?�話
str(vector2)                   # T??�F??�被?��??��?��?��??1???0，�?��?�數字�?�vector

vector3 = c(7,8,6,9,5) # 建�?��?�?��number vector
vector4 = c(2,4,6,0,1) # 建�?��?�?��number vector
vector3 + vector4
vector3 * vector4      # a??�b??�第一?��element?��乘�?�第二個element?���?......
vector4^3              # 對b之中??��?��?�?��element三次?��
vector4 > 3            # ?��?��b之中??�哪些值大?�� 3 ，然後�?�傳 TRUE/FALSE

#課�?�練�?1
#vector
score = c(100, 95, 60, 50, 45, 90, 67, 85, 71)
name = c("Amy", "Bob", "Cindy", "Danny", "Edward", "Patty", "Lin", "Kevin", "Tommy")
gender = factor(c("F", "M", "F", "M", "M","F","M","M","M"))
#請幫??�找?��??�績>70??��?�男學�?�叫??�麼??��??



#課�?�練�?2
#小�?��?��?��?�?��五�?�撲??��?��?��?��?�斯輪盤贏錢??��??
poker_vector = c(140, -50, 20, -120, 240)
roulette_vector = c(-24, -50, 100, -350, 10)
days_vector = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#??��??
#1.??�哪幾天(??��?�幾)?��?��??��?��?��?��?�斯輪盤?��贏錢???
#2.??�總?��??��??+俄�?�斯輪盤??��?��?��?��?�出小�?�這�?�??��?�總?��贏�?�輸多�?��?�可以用sum()


#factor
gender = c("boy", "girl", "boy", "boy", "girl")  #建�?��?�?��character vector
gender = factor(gender)   #轉�?��?�factor??��?? 
gender                     # Levels??�屬?��代�?: ?��?��個�?�數裡面，�?�在?��些�?�別
levels(gender)             # 也可以用levels()?��???

#list ?��以�?��?��?��?��?��?��?��??
Dr.Lee <- list(gender="man", age=26, hobby=c("drawing", "cooking"))
Dr.Lee
str(Dr.Lee)
Dr.Lee$hobby # Dr.Lee??��?�好
Dr.Lee[[3]]
Dr.Lee[3]
str(Dr.Lee[[3]]) #vector
str(Dr.Lee[3]) #list

#dataframe
StuDF <- data.frame(StuID=c(1,2,3,4,5),
                    name=c("Helen", "Lun", "Leon", "Kevin", "Tommy"),
                    score=c(80,36, 88.9, 97.5, 60))
StuDF 
colnames(StuDF) #欄�?��?�稱
rownames(StuDF) #??��??
str(StuDF)
nrow(StuDF)#row?��
ncol(StuDF)#column?��
StuDF$StuID#??��?��?�StuID??��?
StuDF[,1]#也可以寫?��樣，代表�?�第一欄�?��?
StuDF[,"StuID"]

#dataframe練�??
team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")

#練�??: 以�?�面給�?��?��?�建立�?�?���?��?�是great_nba_teams??�dataframe，並?��?��?��??��?��?��?��?��?��??



#常用統�?�函?��
numbers=c(1:20)
sum(numbers)#??�總
mean(numbers)#平�??
median(numbers) #計�?�中位數
var(numbers) #計�?��?�異?��
sd(numbers) #計�?��?��?�差
prod(numbers) #?���? 2.432902e+18 -> 2.432902+10^18
max(numbers) #?��??�大�?
min(numbers) #?��??�小�?
range(numbers) #?��??�小值�?��?�大�?
quantile(numbers)#??�小值、q1?��q2?��q3?���?�大�?

q1 <- quantile(numbers, 0.25); q1
q3 <- quantile(numbers, 0.75); q3
IQR(numbers) # q3-q1
#Combine these statistics value into a vector
sm <- c(sum(numbers), mean(numbers), var(numbers), sd(numbers), median(numbers)); sm
#summary()一次�?��?�小值、第一??��?��?�、中位、平??�、第三�?��?��?�、�?�大�?
summary(numbers)
