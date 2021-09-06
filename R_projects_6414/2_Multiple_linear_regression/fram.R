# Quizz 2



# Importing the data
data = read.csv("C:\\Users\\adri_\\Documents\\Gatech\\ISYE6414\\Homeworks\\2_Multiple_linear_regression\\fram.csv", head = TRUE)

# Converting categorical to quantitative
data$SEX <- as.factor(data$SEX)
data$CURSMOKE <- as.factor(data$CURSMOKE)

# Fitting the linear model
multiple_model <- lm(SYSBP ~ SEX + AGE + CURSMOKE + BMI, data = data, level = 0.99)
summary(multiple_model)


# Fitting the linear model only on the last observation
data2 = data[100,]
data2

multiple_model_last_obs <- lm(SYSBP ~ SEX + AGE + CURSMOKE + BMI, data = data2, level = 0.99)
summary(multiple_model_last_obs)

# Filtering BMI larger or equal than 30 and fitting the linear model
data3 <- data[data$BMI>=30,]

multiple_model_BMI30 <- lm(SYSBP ~ SEX + AGE + CURSMOKE + BMI, data = data3, level = 0.99)
summary(multiple_model_BMI30)


