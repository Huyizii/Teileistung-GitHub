#(1)
Alter <- rnorm(n=100,m=25,sd=2)
#(2)
Studienfach <- sample(c("Statistik","Data Science","Mathe","Informatik"),100,
                      replace=TRUE, prob=c(0.35,0.35,0.1,0.2)) 
#(3)
Datensatz <- data.frame(Alter,Studienfach)
Datensatz$InteresseMathematik <- sample(1:7,100,replace=TRUE,prob=NULL)
Datensatz$InteresseMathematik[Datensatz$Studienfach=='Mathe']<-6:7
Datensatz$InteresseMathematik[Datensatz$Studienfach=='Data Science']<-5:6
Datensatz$InteresseMathematik[Datensatz$Studienfach=='Statistik']<-3:4
Datensatz$InteresseMathematik[Datensatz$Studienfach=='Informatik']<-1:2
#(4)
Datensatz$InteresseProgammierung <- sample(1:7,100,replace=TRUE,prob=NULL)
Datensatz$InteresseProgammierung[Datensatz$Studienfach=='Informatik']<-6:7
Datensatz$InteresseProgammierung[Datensatz$Studienfach=='Data Science']<-4:6
Datensatz$InteresseProgammierung[Datensatz$Studienfach=='Mathe']<-2:3
Datensatz$InteresseProgammierung[Datensatz$Studienfach=='Statistik']<-1:2
#(5)
Datensatz$MatheLK<- sample(c("ja","nein"),100,replace=TRUE,prob=NULL)
Datensatz$MatheLK[Datensatz$InteresseMathematik <= 4]<-"nein"
Datensatz$MatheLK[Datensatz$InteresseMathematik >= 5]<-"ja"

write.csv(Datensatz,"C:\\Users\\Quang Huy\\Desktop\\3.Semester\\W.Arbeit\\GitHub\\Teileistung-GitHub\\Datensatz.csv",row.names=FALSE)
