# 1 ==========================
# PRIPREMA PODATAKA
iris.dataset <- read.csv("iris.csv")


# Pregled podataka
head(iris.dataset)
str(iris.dataset)

# 2 ==========================
# DESKRIPTIVNA ANALIZA
summary(iris.dataset[, c("sepal_length",
                         "sepal_width",
                         "petal_length",
                         "petal_width")])


# Histogrami
par(mfrow = c(2,2))

hist(iris.dataset$sepal_length,
     main = "Sepal Length",
     xlab = "Sepal Length")

hist(iris.dataset$sepal_width,
     main = "Sepal Width",
     xlab = "Sepal Width")

hist(iris.dataset$petal_length,
     main = "Petal Length",
     xlab = "Petal Length")

hist(iris.dataset$petal_width,
     main = "Petal Width",
     xlab = "Petal Width")
     
par(mfrow = c(1,1))


# 3 ==========================
# KORELACIONA ANALIZA
cor_test <- cor.test(iris.dataset$sepal_length, iris.dataset$petal_length)

cor_test$estimate  
cor_test$p.value    # p-value


# ==========================
# 4 REGRESIJA
model <- lm(petal_length ~ sepal_length, data = iris.dataset)
summary(model)


# ==========================
# DIJAGNOSTIKA MODELA
par(mfrow = c(2,2))
plot(model)
par(mfrow = c(1,1))
