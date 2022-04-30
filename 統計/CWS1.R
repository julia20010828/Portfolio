#參數
n = 10
u = 1.04
d = 0.96
U = 1.08
D = 0.92
k = 100

r = 0.012
p = (exp(r*0.1)-d)/(u-d)     #0.515009


#j = 列
#i = 行
mat1 = matrix(NA, 2^n, n+1, dimnames=list(c(1:2^n),c(0:n)))
a = 0
for (j in 1:nrow(mat1)) {
  if(j %% 2 == 1){
    a = a + 1
  }
  for (i in 1:ncol(mat1)) {
    #b = i - 1
    if(j == 1 && i == 1){
      mat1[j, i] = k
    }
    else if(j <= 2^(i-1)){
      if(j %% 2 == 1 && a %% 2 == 1){
        mat1[j, i] = mat1[a, i - 1] * u
      }
      else if(j %% 2 == 0 && a %% 2 == 1){
        mat1[j, i] = mat1[a, i - 1] * d
      }
      else if(j %% 2 == 1 && a %% 2 == 0){
        mat1[j, i] = mat1[a, i - 1] * U
      }
      else if(j %% 2 == 0 && a %% 2 == 0){
        mat1[j, i] = mat1[a, i - 1] * D
      }
    }
  }
}
View(mat1)