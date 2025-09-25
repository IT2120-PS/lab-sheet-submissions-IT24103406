setwd("C:\\Users\\LENOVO\\Desktop\\2025 - Sem 2\\IT2120\\Lab Sessions\\Lab 08\\IT24103406")

nicotine <- scan("Data - Lab 8.txt", what = numeric(), skip = 1)
weights  <- scan("Exercise - LaptopsWeights.txt", what = numeric(), skip = 1)

pop_mean_nic <- mean(nicotine)

pop_var_nic  <- sum((nicotine - pop_mean_nic)^2) / length(nicotine)
pop_sd_nic   <- sqrt(pop_var_nic)

pop_mean_nic
pop_var_nic
pop_sd_nic
var(nicotine)  
sd(nicotine)  

set.seed(123)   
nic_sample_means <- replicate(30, mean(sample(nicotine, size = 5, replace = TRUE)))
nic_sample_sds   <- replicate(30, sd(sample(nicotine, size = 5, replace = TRUE)))