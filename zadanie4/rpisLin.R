Auto <- read.csv("Auto.csv", header = TRUE, na.strings = "?")

attach(Auto)
lmFitWeight <- lm(mpg ~ weight)
lmFitHorsepower <- lm(mpg ~ horsepower)
lmFitAcceleration <- lm(mpg ~ acceleration)
lmFitCylinders <- lm(mpg ~ cylinders)


plot(weight, mpg)
abline(lmFitWeight)

plot(horsepower, mpg)
abline(lmFitHorsepower)

plot(acceleration, mpg)
abline(lmFitAcceleration)

plot(cylinders, mpg)
abline(lmFitCylinders)


# ----
#   mpg od weight
#   mpg wydaje sie byc zale¿ne od weight
#   zaleznocs malejaca
#   po obserwaji wykresu rozwazylbym dopasowanie nieliniwe 
# ---
#   mpg od horpower
#   mpg wydaje sie byc zale¿ne od horspower
#   zaleznocs malejaca
#   po obserwaji wykresu rozwazylbym dopasowanie nieliniwe
# ---
#   mpg od acceleration
#   mpg jest bardzo luzno zwiazane z acceleration
#   zaleznosc rosnaca
#   nie rozwazalbym innego dopasowania
# ---
#   mpg od cylinders
#   widac zwiazek pomiedzy danymi
#   zaleznosc malejaca
#   po obserwaji wykresu rozwazylbym dopasowanie nieliniwe
#   

#   W wekszosci dopasowan jakosc jest slaba poniewaz zaleznosci nie maja natury liniowej.
  
  
  
  
  
