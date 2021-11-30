# pakage CRAN 내려받기
# install.packages("tidyverse", dependencies = TRUE)
<<<<<<< HEAD
# install.packages("randomForest", dependencies = TRUE)
=======
install.packages("remotes", dependencies = TRUE)
>>>>>>> a04bc8a6eddc9515f5c0e9c7e7ad243ba0aeee25

library(tidyverse)
library(lubridate)

# 기초 문법
iris <- iris  ## 패키지에 따라 들어온 샘플 변수
glimpse(iris)
iris

# aes(데이터, xy변수명 정의)
#ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, colour = Species, size = Petal.Length)) +
  ## 시각화그래프 종류 입력
  #geom_point(colour = "red", size = 4, shape = 8) +
  geom_point(shape = 20) +
  
  ## 옵션
  labs(title = "title",
       subtitle = "subtitle",
       x = "x_axis",
       y = "y_axis",
       caption = "created by 00"
       )
  theme_minimal()

  
# library
## https://www.r-graph-gallery.com/294-basic-ridgeline-plot.html#color
# install.packages("ggridges", dependencies = TRUE)
# install.packages("viridis", dependencies = TRUE)
# install.packages("hrbrthemes", dependencies = TRUE)
library(ggridges)
library(ggplot2)
library(viridis)
library(hrbrthemes)
# Plot
ggplot(lincoln_weather, aes(x = `Mean Temperature [F]`, y = `Month`, fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01) +
  scale_fill_viridis(name = "Temp. [F]", option = "C") +
  labs(title = 'Temperatures in Lincoln NE in 2016') +
  theme_ipsum() +
  theme(
    legend.position="none",
    panel.spacing = unit(0.1, "lines"),
    strip.text.x = element_text(size = 8)
  )
