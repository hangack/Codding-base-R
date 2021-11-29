# 변수 저장 방식

a <- 1 ## R만의 문법
b = 1

print(a)
print(b)


# 데이터 타입 확인

my_num = 42
my_char = "hello"
my_logis = TRUE

class(my_num)
class(my_char)
class(my_logis)


# C 벡터

num_vector = c(1,2,3) ## c: combine
char_vector = c('a','b','c')
logi_vector = c(TRUE,FALSE,TRUE)

class(num_vector)
class(char_vector)
class(logi_vector)


# mixed vector

temp_a = c(1,'2',3) ## 동일 형태의 변수만 들어갈 수 있다
temp_a
class(temp_a) ## 문자로 강제 형변환

temp_b = c(1,TRUE, FALSE)
temp_b
class(temp_b) ## 숫자로 강제 형변환

temp_c = c("TRUE",TRUE, FALSE, 100)
temp_c
class(temp_c) ## 문자로 강제 형변환
### 문자 > 숫자 > 논리


# 범주형 변수

city_vector = c("서울","인천","부산")
fac_vector = factor(city_vector) ## 단순 오름차순 정렬

city_vector
class(city_vector)
fac_vector
class(fac_vector)

fac_vector2 = factor(city_vector,
                     ordered = TRUE,                    ## ordered: 서열 정렬 활성
                     levels = c("인천","부산","서울")   ## levels : 다음 순으로 서열 정렬
                     )
fac_vector2
class(fac_vector2)
