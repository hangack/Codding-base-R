library(tidyverse)
require(ggplot2)

loan_data <- read.csv("data/cleaned_loan_data.csv", stringsAsFactors = FALSE)

loan_data %>% duplicated() %>% sum() # 374개 확인
loan_data2 <- loan_data %>% distinct()

loan_data2$loan_status <- factor(loan_data2$loan_status, levels = c(0, 1), labels = c("non_default", "default"))
loan_data2$grade <- as.factor(loan_data2$grade)
loan_data2$home_ownership <- as.factor(loan_data2$home_ownership)


dim(loan_data2)
glimpse(loan_data2)



ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = loan_status)) + 
  theme_minimal() + 
  labs(title = "bar: loan_status")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = loan_status, fill = grade), position=position_dodge()) + 
  theme_minimal() + 
  labs(title = "bar: loan_status-group_grade")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = loan_status, fill = home_ownership), position=position_dodge()) + 
  theme_minimal() + 
  labs(title = "bar: loan_status-group_home")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = loan_status, fill = emp_cat), position=position_dodge()) + 
  theme_minimal() + 
  labs(title = "bar: loan_status-group_emp")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = loan_status, fill = ir_cat), position=position_dodge()) + 
  theme_minimal() + 
  labs(title = "bar: loan_status-group_ir")

ggplot(data = loan_data2)+
  geom_smooth(mapping = aes(x = loan_amnt, y = annual_inc, linetype = loan_status)) +
  theme_minimal() + 
  labs(title = "smooth: loan_status-income/loan")
ggplot(data = loan_data2)+
  geom_smooth(mapping = aes(x = loan_amnt, y = annual_inc, linetype = loan_status)) +
  geom_point(mapping = aes(x = loan_amnt, y = annual_inc))

ggplot(data = loan_data2)+
  geom_smooth(mapping = aes(x = age, y = annual_inc, linetype = loan_status)) +
  theme_minimal() + 
  labs(title = "smooth: loan_status-income/age")
ggplot(data = loan_data2)+
  geom_smooth(mapping = aes(x = age, y = annual_inc, linetype = loan_status)) +
  geom_point(mapping = aes(x = age, y = annual_inc))

ggplot(data = loan_data2)+
  geom_smooth(mapping = aes(x = age, y = loan_amnt, linetype = loan_status)) +
  theme_minimal() + 
  labs(title = "smooth: loan_status-loan/age")
ggplot(data = loan_data2)+
  geom_smooth(mapping = aes(x = age, y = loan_amnt, linetype = loan_status)) +
  geom_point(mapping = aes(x = age, y = loan_amnt))


ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = grade, fill = loan_status)
           #           , position=position_dodge()
  ) + 
  theme_minimal() + 
  labs(title = "bar: grade-loan_status")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = home_ownership, fill = loan_status)
                      , position=position_dodge()
  ) + 
  theme_minimal() + 
  labs(title = "bar: home-loan_status")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = emp_cat, fill = loan_status)
                      , position=position_dodge()
  ) + 
  theme_minimal() + 
  labs(title = "bar: emp-loan_status")

ggplot(data = loan_data2) +
  geom_bar(mapping = aes(x = ir_cat, fill = loan_status)
                      , position=position_dodge()
  ) + 
  theme_minimal() + 
  labs(title = "bar: ir-loan_status")

