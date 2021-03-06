##------------------------------------------------------------------------------
## Vector //
##------------------------------------------------------------------------------

x <- letters
last(x)
last(x, 3)
last(x, 3, keep = TRUE)
last(x, 25)

## Conditions //
last(x, 30)
last(x, 30, strict = 1)
last(x, 30, strict = 2)
try(last(x, 30, strict = 3))

##------------------------------------------------------------------------------
## List //
##------------------------------------------------------------------------------

x <- as.list(letters)
last(x)
last(x, 3)
res <- last(x, 3, keep = TRUE)
attributes(res)

## Conditions //
last(x, 30)
last(x, 30, strict = 1)
last(x, 30, strict = 2)
try(last(x, 30, strict = 3))

##------------------------------------------------------------------------------
## Data frame //
##------------------------------------------------------------------------------

x <- data.frame(a= 1:5, b = letters[1:5], stringsAsFactors = FALSE)

## Rows:
last(x)
last(x, 3)
res <- last(x, 3, keep = TRUE)
attributes(res)

## Columns:
last(x, margin = 2)
last(x, 2, margin = 2)
last(x, 3, margin = 2)

last(x, margin = 2, drop = TRUE)
last(x, 2, margin = 2, drop = TRUE)

## Conditions:
first(x, 10)
first(x, 10, strict = 1)
first(x, 10, strict = 2)
try(first(x, 10, strict = 3))

first(x, 3, margin = 2)
first(x, 3, margin = 2, strict = 1)
first(x, 3, margin = 2, strict = 2)
try(first(x, 3, margin = 2, strict = 3))
