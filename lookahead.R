lookahead <-
function (pattern_to_search, negated = FALSE) 
{
    if (negated) {
        pattern <- paste0("(?!", pattern_to_search, ")")
    }
    else {
        pattern <- paste0("(?=", pattern_to_search, ")")
    }
    return(pattern)
}
