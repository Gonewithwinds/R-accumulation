#filter

#列出变量的取值种类
unique(starwars$species)

#提取species == “Droid"的个案
data8 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter(species == "Droid") %>% 
  arrange(height)

data9 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter(species == "Human") %>% 
  arrange(desc(height))

data10 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  arrange(desc(height)) %>% 
  filter(height < 200)

#用逗号分隔多个提取条件
data11 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter(height < 200, species == "Human") %>% 
  arrange(desc(height))

data12 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter((species == "Human" | species == "Droid") &
           height < 200) %>% 
  arrange(desc(height))

#%in% 属于
data13 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter((species %in% c("Human","Droid"))&
           height < 200) %>% 
  arrange(desc(height))

#filter(!is.na(height))保留height没有缺失值的个案
data14 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter(!is.na(starwars$height)) %>% 
  arrange(desc(height))