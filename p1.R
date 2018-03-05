rm(list=ls())

datos = read.csv("dat1.csv", header=T)

print(datos)
print(names(datos))
attach(datos)

boxplot(Y ~ as.factor(X), data = datos)

x = as.factor(X)
print(x)

res = aov(Y ~ x, data = datos)

print(res)

print(TukeyHSD(res))


