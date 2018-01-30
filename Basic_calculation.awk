#!/usr/bin/awk -f

# 输入./Basic_calculation 100
# 100 为你需要的加减乘的数字范围

# 生成随机数
BEGIN{
    maxnum=ARGC > 1 ? ARGV[1] : 10
    ARGV[1]="-"
    srand()
    do
    {
       n1=randint(maxnum) 
       n2=randint(maxnum) 
       action=randlet()
       printf("%d %s %d = \n",n1,action,n2)
       while((input=getline)>0)
       {
           if(action == "+"){
               if ($0 == n1 + n2) {
                   print "Right!"
                   break
               } else if ($0 == "") {
                   print n1 + n2
                   break
               } else
                   printf("wrong, try again: ")
           } else if(action == "-"){
               if ($0 == n1 - n2) {
                   print "Right!"
                   break
               } else if ($0 == "") {
                   print n1 - n2
                   break
               } else
                   printf("wrong, try again: ")

           } else if(action == "x"){
               if ($0 == n1 * n2) {
                   print "Right!"
                   break
               } else if ($0 == "") {
                   print n1 x n2
                   break
               } else
                   printf("wrong, try again: ")

           }
       }
    }
    while (input > 0)
}

function randlet() {
    return substr("+-x", randint(3), 1)
}

function randint(n) {
    return int(n * rand()) + 1
}

