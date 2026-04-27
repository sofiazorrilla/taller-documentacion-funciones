chr_class <-
function (type, negated = FALSE, engine = c("posix", "perl")) 
{
    engine <- match.arg(engine)
    clases <- list(digit = c(posix = "[[:digit:]]", perl = "\\d"), 
        lower = c(posix = "[[:lower:]]", perl = "[a-z]"), upper = c(posix = "[[:upper:]]", 
            perl = "[A-Z]"), alpha = c(posix = "[[:alpha:]]", 
            perl = "[A-Za-z]"), alnum = c(posix = "[[:alnum:]]", 
            perl = "[A-Za-z0-9]"), word = c(posix = "[[:alnum:]_]", 
            perl = "\\w"), xdigit = c(posix = "[[:xdigit:]]", 
            perl = "[0-9A-Fa-f]"), blank = c(posix = "[[:blank:]]", 
            perl = "[ \\t]"), space = c(posix = "[[:space:]]", 
            perl = "\\s"), punct = c(posix = "[[:punct:]]", perl = "[[:punct:]]"), 
        graph = c(posix = "[[:graph:]]", perl = "[[:graph:]]"), 
        print = c(posix = "[[:print:]]", perl = "[[:print:]]"), 
        cntrl = c(posix = "[[:cntrl:]]", perl = "[[:cntrl:]]"))
    if (!type %in% names(clases)) {
        stop("Tipo de clase de caracter no reconocido")
    }
    pattern <- clases[[type]][[engine]]
    if (negated) {
        pattern <- switch(pattern, `\\d` = "\\D", `\\w` = "\\W", 
            `\\s` = "\\S", paste0("[^", gsub("^\\[|\\]$", "", 
                pattern), "]"))
    }
    return(pattern)
}
