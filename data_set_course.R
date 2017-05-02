# Criação do DATASET
data_set_course <- data.frame(cod    = 1:1000, 
                              mes    = rep(month.name, 1000),
                              class  = c(rep('P',200), rep('S',600), rep('E',200)),
                              quant  = runif(1000,1,8),
                              valor  = rnorm(1000,2),
                              custo  = runif(1000,1,8),
                              pais   = sample(us.cities$name, 1000, replace = TRUE),
                              sexo   = c(rep('F',300), rep('M',700)))

#Salvar o data set no disco

set.seed("0")
save(data_set_course, file = "data_set_course.rdata")

#Somas e medias das colunas numéricas do dataset usando ??pply
lapply(data_set_course[4:6], sum)
lapply(data_set_course[4:6], mean)

#Usar split
data_set_course1 <- split(data_set_course, data_set_course$valor)

#Mostra um gráfico
plot(data_set_course$pais, data_set_course$valor)


#Histograma
hist(data_set_course$valor)