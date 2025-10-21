rm(list = ls())

# Only edit lines that says "<< edit"
# Don't add / remove any line to this script

# ----

ii <- 1L # << edit
stopifnot(is.integer(ii) && ii == 1)

vec1 <- 1:3
vec2 <- c(vec1, vec1, 2L * vec1) # << edit
stopifnot(is.integer(vec2))

ss <- 24 # << edit
stopifnot(sum(vec2) == ss)

vv <- 1 # << edit
stopifnot(vec2[ii*4] == vv)

length(vec2) <- length(vec2) - 2
ll <- 7 # << edit
stopifnot(length(vec2) == ll)

for (vv in vec2) {
    vv <- 10
}
ss <- 14 # << edit 
stopifnot(sum(vec2) == ss)

for (ii in seq_along(vec2)) {
    vec2[ii] <- 10
}
ss <- 70 # << edit
stopifnot(sum(vec2) == ss)

vec3 <- rep(3, 10)
mm <- 3 # << edit
stopifnot(mean(vec3[c(1, 5, 2)]) == mm)

# ----

vec4 <- letters[4:1]
str <- paste(vec4[4], vec4[3], sep = "-") # << edit
stopifnot(str == "a-b")

str <- "bb" # << edit
stopifnot(str == paste0(vec4[3], vec4[3]))

# ----

vec5 <- c(1, 3, 5)
func_1 <- function(vec, ff) {
    return(ff(vec))
}
res <- func_1(vec5, mean) # << edit
stopifnot(res == 3)


# ----

vec6 <- c(2, 0, 3, 7, 5)
ii <- 4 # << edit
stopifnot(ii == which.max(vec6))

ss <- 15 # << edit
stopifnot(ss == sum(seq_along(vec6))) 

ii <- 2 # << edit
stopifnot(ii == min(cumsum(vec6)))


# ----

fac <- factor(c("type_a", "type_b", "type_b", "type_a", "type_a", "type_c"))
fac1 <- c(1L, 2L, 2L, 1L, 1L, 3L) # << edit
attr(fac1, "levels") <- c("type_a", "type_b", "type_c")
attr(fac1, "class") <- "factor"

stopifnot(identical(fac, fac1))


