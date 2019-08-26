library(tidyverse)
library(dslabs)

past_year <- 1970
gapminder <- gapminder %>%  mutate(dollars_per_day = gdp/population/365)

gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(dollars_per_day)) + 
  geom_histogram(binwidth = 1, color = "black")

gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(log2(dollars_per_day))) + 
  geom_histogram(binwidth = 1, color = "black")

gapminder %>% 
  filter(year == past_year) %>%
  ggplot(aes(log10(population))) +
  geom_histogram(binwidth = 0.5, color = "black")


gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(dollars_per_day)) + 
  geom_histogram(binwidth = 1, color = "black") +
  scale_x_continuous(trans = "log2")

gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(dollars_per_day)) + 
  geom_histogram(binwidth = 0.1, color = "black") +
  scale_x_log10()


gapminder <- gapminder %>% 
  mutate(group = case_when(
    region %in% c("Western Europe", "Northern Europe","Southern Europe", 
                  "Northern America", "Australia and New Zealand") ~ "West",
    region %in% c("Eastern Asia", "South-Eastern Asia") ~ "East Asia",
    region %in% c("Caribbean", "Central America", "South America") ~ "Latin America",
    continent == "Africa" & region != "Northern Africa" ~ "Sub-Saharan Africa",
    TRUE ~ "Others"))

gapminder <- gapminder %>% 
  mutate(group = factor(group, 
                        levels = c("Others", "Latin America", "East Asia", "Sub-Saharan Africa", "West")))

p <- gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(group, dollars_per_day)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  scale_y_continuous(trans = "log2") +
  xlab("")
p 


p <- gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(region, dollars_per_day)) 
p + geom_point() 


p + geom_point() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))



p <- gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  mutate(region = reorder(region, dollars_per_day, FUN = median)) %>%
  ggplot(aes(region, dollars_per_day)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) 
p

p + scale_y_continuous(trans = "log2")

p <- gapminder %>% 
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(group, dollars_per_day)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  scale_y_continuous(trans = "log2") +
  xlab("")
p 

p + geom_point(alpha = 0.5)

library(ggridges)
p <- gapminder %>% 
  filter(year == past_year & !is.na(dollars_per_day)) %>%
  ggplot(aes(dollars_per_day, group)) + 
  scale_x_continuous(trans = "log2") 
p  + geom_density_ridges() 

p + geom_density_ridges(jittered_points = TRUE, 
                        position = position_points_jitter(width = 0.05, height = 0),
                        point_shape = '|', point_size = 3, point_alpha = 1, alpha = 0.7)

past_year <- 1970
present_year <- 2010
gapminder %>% 
  filter(year %in% c(past_year, present_year) & !is.na(gdp)) %>%
  mutate(west = ifelse(group == "West", "West", "Developing")) %>%
  ggplot(aes(dollars_per_day)) +
  geom_histogram(binwidth = 1, color = "black") +
  scale_x_continuous(trans = "log2") + 
  facet_grid(year ~ west)

country_list_1 <- gapminder %>% 
  filter(year == past_year & !is.na(dollars_per_day)) %>% 
  pull(country)

country_list_2 <- gapminder %>% 
  filter(year == present_year & !is.na(dollars_per_day)) %>% 
  pull(country)

country_list <- intersect(country_list_1, country_list_2)

gapminder %>% 
  filter(year %in% c(past_year, present_year) & !is.na(gdp) & country %in% country_list) %>%
  mutate(west = ifelse(group == "West", "West", "Developing")) %>%
  ggplot(aes(dollars_per_day)) +
  geom_histogram(binwidth = 1, color = "black") +
  scale_x_continuous(trans = "log2") + 
  facet_grid(year ~ west)


gapminder %>% 
  filter(year %in% c(past_year, present_year) & country %in% country_list) %>%
  ggplot(aes(group, dollars_per_day)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  scale_y_continuous(trans = "log2") +
  xlab("") +
  facet_grid(. ~ year)


gapminder %>% 
  filter(year %in% c(past_year, present_year) & country %in% country_list) %>%
  mutate(year = factor(year)) %>%
  ggplot(aes(group, dollars_per_day, fill = year)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  scale_y_continuous(trans = "log2") +
  xlab("") 


gapminder %>% 
  filter(year %in% c(past_year, present_year) & country %in% country_list) %>%
  ggplot(aes(dollars_per_day)) +
  geom_density(fill = "grey") + 
  scale_x_continuous(trans = "log2") + 
  facet_grid(. ~ year)


gapminder %>% 
  filter(year %in% c(past_year, present_year) & country %in% country_list) %>%
  mutate(group = ifelse(group == "West", "West", "Developing")) %>%
  ggplot(aes(dollars_per_day, fill = group)) +
  scale_x_continuous(trans = "log2") +
  geom_density(alpha = 0.2) + 
  facet_grid(year ~ .)
