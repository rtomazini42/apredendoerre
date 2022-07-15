piratesurvey <- data.frame(
  name = c("Astrid", "Lea", "Sarina", "Remon", "Letizia", "Babice", "Jonas", "Wendy", "Niveditha", "Gioia"),
  sex = c("F", "F", "F", "M", "F", "F", "M", "F", "F", "F"),
  age = c(30, 25, 25, 29, 22, 22, 35, 19, 32, 21),
  superhero = c("Batman", "Superman", "Batman", "Spiderman", "Batman",
                "Antman", "Batman", "Superman", "Maggott", "Superman"),
  tattoos = c(11, 15, 12, 5, 65, 3, 9, 13, 900, 0),
  stringsAsFactors = FALSE
)


mean(piratesurvey$age)
pirateMale <- subset(piratesurvey, subset = sex =="M")
pirateFemale <- subset(piratesurvey, subset = sex =="F")

mean(pirateFemale$age)
mean(pirateMale$age)

max(pirateMale$tattoos)


mean((pirateFemale$age < 32))

piratesurvey$tattosPerYear <- (piratesurvey$tattoos/piratesurvey$age)

max(piratesurvey$tattosPerYear)
