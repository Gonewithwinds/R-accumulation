library(dplry)

names(starwars)

#contains()
#stars_with()
#ends_with()
#last_col()

data1 <- starwars %>% select(
  name, height, mass, sex, species, films
)

data2 <- starwars %>% 
  select(name:mass)

data3 <- starwars %>% 
  select(1:6)

data4 <- starwars %>% 
  select(1:3,7:8)

#设置条件 contains()
data5 <- starwars %>% 
  select(name, species, contains("color"))

#对变量重新命名
data6 <- data1 %>% 
  select(name, height, weight = mass)

#生成新变量
#desc() descending
data1_new <- 
  data1 %>% 
  mutate(BMI = mass/((height/100)^2)) %>% 
  arrange(desc(BMI))
  