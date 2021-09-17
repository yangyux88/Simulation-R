##Question 1
#next year avg.claim per employee = next_claim
#next year employees = next_emp
#the cost of insuring the employees in the next year = next_cost
#premium = prem
#next_cost=next_claim*next_emp - prem*next_emp
##Question 2
nism <- 10000

prem <- 147
curr_emp <- 19735
curr_claim <- 224

next_cost <- c()

set.seed(2)

for(i in 1:nism){
  rate_emp <- runif(1,-0.02,0.04)
  rate_claim <- rnorm(1,0.005,0.01)
  next_cost[i] <- curr_claim*(1+rate_claim)*curr_emp*(1+rate_emp)-prem*curr_emp*(1+rate_emp)
}

next_cost
##Question 3
mean(next_cost)
sd(next_cost)
##Question 4
prob_1 <- sum(next_cost > 1000000)/10000
prob_1
##Quesstion 5
nism <- 10000

prem <- 150
curr_emp <- 19735
curr_claim <- 224

next_cost2 <- c()

set.seed(2)

for(i in 1:nism){
  rate_emp <- runif(1,-0.02,0.04)
  rate_claim <- rnorm(1,0.005,0.01)
  next_cost2[i] <- curr_claim*(1+rate_claim)*curr_emp*(1+rate_emp)-prem*curr_emp*(1+rate_emp)
}

next_cost2
prob_2 <- sum(next_cost2 > 1000000)/10000
prob_2
##Question 6
#under the prem = 147
lower <- mean(next_cost) - 1.96*sd(next_cost)/sqrt(nsim)
upper <- mean(next_cost) + 1.96*sd(next_cost)/sqrt(nsim)
lower
upper
#the CI1 is (1553592,1560061)
#under the prem = 150
lower <- mean(next_cost2) - 1.96*sd(next_cost2)/sqrt(nsim)
upper <- mean(next_cost2) + 1.96*sd(next_cost2)/sqrt(nsim)
lower
upper
#the CI2 is (1493813,1500218)
##compare this two situations, we can get that the CI1 is significantlly statistic higher than the CI2
##Thus, the prem = 150 is better. we want to get the lower one. 