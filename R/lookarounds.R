## Look ahead

# Función para lookahead
lookahead <- function(pattern_to_search, negated = FALSE){
  if (negated) {
    pattern <- paste0("(?!", pattern_to_search, ")")
  } else {
    pattern <- paste0("(?=", pattern_to_search, ")")
  }
  return(pattern)
}

# Ejemplo
# texto <- "ABC123"

# regex <- paste0("\\w+", lookahead("123"))

# cat(
#   "Ejemplo:\nTexto original:", texto,
#   "\nQueremos extraer: ABC",
#   "\nRegex:", regex,
#   "\nResultado:", str_extract(texto, regex)
# )



## Look behind

# Función para generar la expresión regex que nos ayude a revisar que el patrón conocido esté antes de lo que nos interesa extraer (sin incluirlo)
lookbehind <- function(pattern_to_search = NULL, negated = FALSE) {
  if (negated) {
    pattern <- paste0("(?<!", pattern_to_search, ")")
  } else {
    pattern <- paste0("(?<=", pattern_to_search, ")")
  }
  return(pattern)
}

# Ejemplo
# texto <- "ABC123"

# regex <- paste0(lookbehind("ABC"), "\\d+")

# cat(
#   "Ejemplo:\nTexto original:", texto,
#   "\nQueremos extraer: 123",
#   "\nRegex:", regex,
#   "\nResultado:", str_extract(texto, regex)
# )

# Ejemplo con negación
# texto <- "ABC123 XYZ456"

# regex <- paste0(lookbehind("ABC", negated = TRUE),"\\b", "\\d+")

# str_extract_all(texto, regex)

