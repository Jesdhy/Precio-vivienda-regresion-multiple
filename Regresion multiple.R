# Cargar el paquete necesario
library(dplyr)

# Crear un dataframe con los datos
datos <- data.frame(
  tamaño = c(1500, 2000, 1800, 2400, 3000),
  habitaciones = c(3, 4, 3, 5, 6),
  edad = c(10, 5, 15, 20, 8),
  precio = c(250000, 350000, 300000, 400000, 500000)
)

# Ajustar el modelo de regresión múltiple
modelo <- lm(precio ~ tamaño + habitaciones + edad, data = datos)

# Mostrar los resultados del modelo
summary(modelo)

#Pedimos los coeficientes
modelo$coefficients

#Calculo del precio segun el tamaño
18397.4359 + (154.4872*2000) + (4743.5897*4) + (-769.2308*5)

