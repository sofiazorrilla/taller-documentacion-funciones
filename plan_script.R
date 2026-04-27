
# Función inicial ---------------------------------------------------------

# Los ejemplos serán con esta función
add <- function(a,b){
  c <- a + b
  return(c)
}

# Ustedes trabajan con esta 

substract <- function(a,b){
  c <- a - b
  return(c)
}


# Documentar con comentarios ----------------------------------------------


# Suma de dos números enteros
add <- function(a,b){
  
  # a y b deben ser dos números enteros
  c <- a + b
  
  # El resultado también será un número entero
  return(c)
}

# Insertar esqueleto roxygen ----------------------------------------------

#' Title
#'
#' @param a 
#' @param b 
#'
#' @returns
#' @export
#'
#' @examples
add <- function(a,b){
  c <- a + b
  return(c)
}


#' Sumar dos números enteros
#'
#' @param a Integer. Primer número a sumar
#' @param b Integer. Segundo número a sumar
#'
#' @returns Integer. Resultado de la suma de a y b.
#'
#' @details Esta función sólo se puede utilizar para sumar enteros, no está
#'   preparada para concatenar caracteres. Es la función inversa de
#'   `substract()`. Ver [my_pakage::substract()] y para más información de como
#'   usarla se puede consultar la viñeta vignette("rd-formatting", package =
#'   "roxygen2")
#'
#'
#' @examples
#' add(1,2)
#' add(5,6)
#' @export
add <- function(a,b){
  c <- a + b
  return(c)
}

# Reflow comments -> dejarlos de la longitud adecuada
# Ejercicio -> practicar generando la documentación de la función substract


# Programación defensiva --------------------------------------------------


