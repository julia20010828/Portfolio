######çµ±è?ˆå¯¦ç¿?1#######
##ä¸»è?è?‡æ?™ç¨®é¡?
print("hello R")
my_numeric =  42
str(my_numeric)
my_integer = 10L
str(my_integer)
my_logic = TRUE
str(my_logic)
my_character = "universe"
str(my_character)

##å¸¸ç”¨è³‡æ?™ç?æ??
#vector
a = c(5,10,15,20,25) #å»ºç?‹ä?€?€‹number vector
b = c("Tom", "Henry", "John") #å»ºç?‹ä?€?€‹character vector
#??–å€?
a[3]      # Ans: 15           ??–ç¬¬3?€‹element
a[1:3]    # Ans: 5 10 15      ??–ç¬¬1~ç¬?3?€‹element
a[c(2,4)] # Ans: 10 20        ??–ç¬¬2??Œç¬¬4?€‹element

#?œ¨vectorè£¡æ?‰ä?€?€‹é?€è¦æ³¨??ç?„è?å?‡ï?šã€Œæ?ä?€?€‹element?€éƒ½??ƒæ˜¯?›¸??Œç?„å?‹æ??
vector1 = c(1, "john", 3) #?‹¥?˜¯??Šnumber??Œcharacter??Œæ?‚æ”¾?…¥vectorè£?
str(vector1)                   #R??ƒè‡ª??•å?‡æ?€??‰element??„å?‹æ?‹ï?Œè?‰è?Šæ?character
vector2 = c(T, 3, F )      #logic??Œnumber?œ¨vectorè£¡ç?„è©±
str(vector2)                   # T??ŒF??ƒè¢«?‡ª??•è?‰æ?›æ??1???0ï¼Œè?Šæ?æ•¸å­—ç?„vector

vector3 = c(7,8,6,9,5) # å»ºç?‹ä?€?€‹number vector
vector4 = c(2,4,6,0,1) # å»ºç?‹ä?€?€‹number vector
vector3 + vector4
vector3 * vector4      # a??Œb??„ç¬¬ä¸€?€‹element?›¸ä¹˜ï?Œç¬¬äºŒå€‹element?›¸ä¹?......
vector4^3              # å°bä¹‹ä¸­??„æ?ä?€?€‹elementä¸‰æ¬¡?–¹
vector4 > 3            # ?ˆ¤?–·bä¹‹ä¸­??„å“ªäº›å€¼å¤§?–¼ 3 ï¼Œç„¶å¾Œå?å‚³ TRUE/FALSE

#èª²ç?‹ç·´ç¿?1
#vector
score = c(100, 95, 60, 50, 45, 90, 67, 85, 71)
name = c("Amy", "Bob", "Cindy", "Danny", "Edward", "Patty", "Lin", "Kevin", "Tommy")
gender = factor(c("F", "M", "F", "M", "M","F","M","M","M"))
#è«‹å¹«??‘æ‰¾?ˆ°??ç¸¾>70??†ç?„ç”·å­¸ç?Ÿå«??šéº¼??å??



#èª²ç?‹ç·´ç¿?2
#å°æ?æ?Ÿæ?Ÿä?€?‡³äº”ç?„æ’²??‹ç?Œè?‡ä?„ç?…æ–¯è¼ªç›¤è´éŒ¢??‘é??
poker_vector = c(140, -50, 20, -120, 240)
roulette_vector = c(-24, -50, 100, -350, 10)
days_vector = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#??é??
#1.??‰å“ªå¹¾å¤©(??Ÿæ?Ÿå¹¾)?˜¯?’²??‹ç?Œå?Œä?„ç?…æ–¯è¼ªç›¤?ƒ½è´éŒ¢???
#2.?? ç¸½?’²??‹ç??+ä¿„ç?…æ–¯è¼ªç›¤??„é?‘é?ï?Œç?—å‡ºå°æ?é€™ä?€??Ÿæ?Ÿç¸½?…±è´æ?–è¼¸å¤šå?‘ï?Œå¯ä»¥ç”¨sum()


#factor
gender = c("boy", "girl", "boy", "boy", "girl")  #å»ºç?‹ä?€?€‹character vector
gender = factor(gender)   #è½‰æ?›æ?factor??‹æ?? 
gender                     # Levels??„å±¬?€§ä»£è¡?: ?œ¨?€™å€‹è?Šæ•¸è£¡é¢ï¼Œå?˜åœ¨?“ªäº›é?åˆ¥
levels(gender)             # ä¹Ÿå¯ä»¥ç”¨levels()?Ÿ¥???

#list ?¯ä»¥å?˜ä?å?Œç?„è?‡æ?™å?‹æ??
Dr.Lee <- list(gender="man", age=26, hobby=c("drawing", "cooking"))
Dr.Lee
str(Dr.Lee)
Dr.Lee$hobby # Dr.Lee??„å?œå¥½
Dr.Lee[[3]]
Dr.Lee[3]
str(Dr.Lee[[3]]) #vector
str(Dr.Lee[3]) #list

#dataframe
StuDF <- data.frame(StuID=c(1,2,3,4,5),
                    name=c("Helen", "Lun", "Leon", "Kevin", "Tommy"),
                    score=c(80,36, 88.9, 97.5, 60))
StuDF 
colnames(StuDF) #æ¬„ä?å?ç¨±
rownames(StuDF) #??—å??
str(StuDF)
nrow(StuDF)#row?•¸
ncol(StuDF)#column?•¸
StuDF$StuID#??–æ?„ä?StuID??„å€?
StuDF[,1]#ä¹Ÿå¯ä»¥å¯«?€™æ¨£ï¼Œä»£è¡¨å?–ç¬¬ä¸€æ¬„ç?„å€?
StuDF[,"StuID"]

#dataframeç·´ç??
team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")

#ç·´ç??: ä»¥ä?Šé¢çµ¦ç?„è?‡æ?™å»ºç«‹ä?€?€‹å?å?—æ˜¯great_nba_teams??„dataframeï¼Œä¸¦?°?‡º?˜¯?? è?é?Šä?ç?„è?‡è??



#å¸¸ç”¨çµ±è?ˆå‡½?•¸
numbers=c(1:20)
sum(numbers)#?? ç¸½
mean(numbers)#å¹³å??
median(numbers) #è¨ˆç?—ä¸­ä½æ•¸
var(numbers) #è¨ˆç?—è?Šç•°?•¸
sd(numbers) #è¨ˆç?—æ?™æ?–å·®
prod(numbers) #?›¸ä¹? 2.432902e+18 -> 2.432902+10^18
max(numbers) #?‰¾??€å¤§å€?
min(numbers) #?‰¾??€å°å€?
range(numbers) #?‰¾??€å°å€¼è?‡æ?€å¤§å€?
quantile(numbers)#??€å°å€¼ã€q1?€q2?€q3?€æ?€å¤§å€?

q1 <- quantile(numbers, 0.25); q1
q3 <- quantile(numbers, 0.75); q3
IQR(numbers) # q3-q1
#Combine these statistics value into a vector
sm <- c(sum(numbers), mean(numbers), var(numbers), sd(numbers), median(numbers)); sm
#summary()ä¸€æ¬¡ç?‹æ?€å°å€¼ã€ç¬¬ä¸€??›å?†ä?ã€ä¸­ä½ã€å¹³??‡ã€ç¬¬ä¸‰å?›å?†ä?ã€æ?€å¤§å€?
summary(numbers)
