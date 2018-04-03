#1. Calculate the P Value for the test in Problem 2.

#Now to find out our test statistic
newucb_data <- as.data.frame(UCBAdmissions)
View(newucb_data)
dim(newucb_data)
summary(newucb_data$Admit)
phat <- 12/(24)
t <- (phat-0.4)/sqrt(0.4*0.6/(24))
t
# [1] 1


#to calculate p value for the test
#we use pnorm function
#to find probability
#as we get 1 by the test in previous answers of this
#thus

pnorm(1)
# [1] 0.8413447  
                 #Answer




#2. How do you test the proportions and compare against hypothetical props? 
#Test Hypothesis: proportion of automatic cars is 40%.


#as we have to test the proportions lets do "one sample proportions test" 
#and assume we have taken a sample of 210 cars and found 65 cars automatic of all  
#so defining the null hypothesis to 
#Ho: p equal to 0.40
#Ha: p not equal to 0.40

#one sample prop test
prop.test(65,210, p=0.40,alternative = "two.sided",conf.level = 0.99,correct = F)

#now since our test p value 0.007444 is less than 0.05 we will reject the null hypo
#and accept the alternative hypo that says that p is not equal to 0.40
#thus in this way we can test the proportions


#With mtcars data

#Ho: p equal to 0.40
#Ha: p not equal to 0.40


prop.test(table(mtcars$am)[2], nrow(mtcars), p = 0.4, alternative = "less",
          conf.level = 0.99, correct = FALSE)

#now since our test p value 0.5288 is more than 0.05 we do not reject the null hypo
#that says that p is equal to 0.40
#thus in this way we can test the proportions






