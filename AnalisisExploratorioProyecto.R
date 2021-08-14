#Analisis Exploratorio Proyecto Impactos laborales ante COVID EUA 
#overall
#geography
#geography_industry
#industry
#industry_job_family
#job_family
#job_family_role

library(ggplot2)
library(dplyr)

overall <- read.csv("https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/overall.csv.part_00000")
industry <- read.csv("https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/industry.csv.part_00000")
industry_job_family <- read.csv("https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/industry_job_family.csv.part_00000")
geography <- read.csv( "https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/geography.csv.part_00000")
geography_industry<- read.csv( "https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/geography_industry.csv.part_00000")
job_family<- read.csv("https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/job_family.csv.part_00000")
job_family_role<- read.csv( "https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/job_family_role.csv.part_00000")

names(overall)
names(geography)
names(geography_industry)
names(industry)
names(industry_job_family)
names(job_family)
names(job_family_role)

tail(overall)
tail(geography)
tail(geography_industry)
tail(industry)
tail(industry_job_family)
tail(job_family)
tail(job_family_role)


#Overall
summary(overall)
moverall <-mean(overall$count_id_indexed)

min.overall<- min(overall$count_id_indexed)
max.overall<- max(overall$count_id_indexed)

ggplot(overall, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.09, col="black", fill = "blue") + 
  ggtitle("Histograma overall", paste("Media=",moverall,"Minimo= ",
                                      min.overall,"Maximo= ",
                                      max.overall)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  moverall, col = "red", lwd = 0.7)+
  theme_light()

 ggplot(overall,aes(post_date, count_id_indexed)) +
  geom_point()


#geography
summary(geography)

min.geography<- min(geography$count_id_indexed)
max.geography<- max(geography$count_id_indexed)

mgeography <-mean(geography$count_id_indexed)
ggplot(geography, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.7, col="black", fill = "blue") + 
  ggtitle("Histograma geography", paste("Media=",mgeography,"Minimo= ",
                                        min.geography,"Maximo= ",
                                        max.geography)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  mgeography, col = "red", lwd = 0.7)+
  theme_light()

ggplot(geography,aes(post_date, count_id_indexed)) +
  geom_point()

#ggplot(geography,aes(x=state, y=count_id_indexed)) +
#  geom_bar() 
#Hay que agrupar estados e indices primeramente ya que ambos se repiten 



#geography_industry
summary(geography_industry)


min.geography_industry<- min(geography_industry$count_id_indexed)
max.geography_industry<- max(geography_industry$count_id_indexed)

mgeography_industry <-mean(geography_industry$count_id_indexed)
ggplot(geography_industry, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.7, col="black", fill = "blue") + 
  ggtitle("Histograma", paste("Media=",mgeography_industry,"Minimo= ",
                              min.geography_industry,"Maximo= ",
                              max.geography_industry)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  mgeography_industry, col = "red", lwd = 0.7)+
  theme_light()


ggplot(geography_industry,aes(post_date, count_id_indexed)) +
  geom_point()


#industry
summary(industry)

min.industry<- min(industry$count_id_indexed)
max.industry<- max(industry$count_id_indexed)

mindustry <-mean(industry$count_id_indexed)
ggplot(industry, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.1, col="black", fill = "blue") + 
  ggtitle("Histograma", paste("Media=",mindustry,"Minimo= ",
                              min.industry,"Maximo= ",
                              max.industry)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  mindustry, col = "red", lwd = 0.7)+
  theme_light()

ggplot(industry,aes(post_date, count_id_indexed)) +
  geom_point()
ggplot(industry,aes(industry, count_id_indexed)) +
  geom_point()


#industry_job_family

summary(industry_job_family)
min.industry_job_family<- min(industry_job_family$count_id_indexed)
max.industry_job_family<- max(industry_job_family$count_id_indexed)

mindustry_job_family <-mean(industry_job_family$count_id_indexed)
ggplot(industry_job_family, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.3, col="black", fill = "blue") + 
  ggtitle("Histograma", paste("Media=",mindustry_job_family,"Minimo= ",
                              min.industry_job_family,"Maximo= ",
                              max.industry_job_family)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  mindustry_job_family, col = "red", lwd = 0.7)+
  theme_light()

ggplot(industry_job_family,aes(post_date, count_id_indexed)) +
  geom_point()

#job_family

summary(job_family)
head(job_family_role)
min.job_family<- min(job_family$count_id_indexed)
max.job_family<- max(job_family$count_id_indexed)

mjob_family <-mean(job_family$count_id_indexed)
ggplot(job_family, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.1, col="black", fill = "blue") + 
  ggtitle("Histograma", paste("Media=",mjob_family,"Minimo= ",
                              min.job_family,"Maximo= ",
                              max.job_family)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  mjob_family, col = "red", lwd = 0.7)+
  theme_light()

ggplot(job_family,aes(post_date, count_id_indexed)) +
  geom_point()

#job_family_role
#problemas con el apply ya que mapeo count_id_indexed como caracter 
summary(job_family_role)

min.job_family_role<- min(job_family_role$count_id_indexed)
max.job_family_role<- max(job_family_role$count_id_indexed)
tail(job_family_role)

apply(job_family_role$count_id_indexed,1,as.numeric)


class(job_family_role$count_id_indexed)

mjob_family_role <-mean(job_family_role$count_id_indexed)
class(job_family$count_id_indexed)

ggplot(job_family_role, aes(count_id_indexed))+ #aes es para delimitar
  geom_histogram(binwidth = 0.1, col="black", fill = "blue") + 
  ggtitle("Histograma", paste("Media=",mjob_family_role,"Minimo= ",
                              min.job_family_role,"Maximo= ",
                              max.job_family_role)) +
  ylab("Frecuencia") +
  xlab("Indice") +
  geom_vline(xintercept =  mjob_family_role, col = "red", lwd = 0.7)+
  theme_light()

#duda de como grafica caracteres 
ggplot(job_family,aes(post_date, count_id_indexed)) +
  geom_point()

#SERIE DE TIEMPO


Date.ts <- ts(overall$count_id_indexed, freq = 12)

# Modelo Multiplicativo

Date.descom.M <- decompose(Date.ts, type = "mult")

plot(Date.descom.M, xlab = "Tiempo", 
     sub = "Descompocision indice de impacto ")

# Componentes

Trend <- Date.descom.M$trend
Seasonal <- Date.descom.M$seasonal
Random <- Date.descom.M$random

ts.plot(cbind(Trend, Trend*Seasonal), xlab = "Tiempo", main = "Descompocision indice de impacto", 
        ylab = "Indice de impacto", lty = 1:2)

Trend[7]*Seasonal[7]*Random[7]
Date.ts[7]

Trend[100]*Seasonal[100]*Random[100]
Date.ts[100]



