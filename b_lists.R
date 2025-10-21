rm(list = ls())

# Only edit lines that says "<< edit"
# Don't add / remove any line to this script

# ----

vec1 <- 1:5
vec2 <- letters[vec1 + 1]
lst1 <- list(vec1, vec2) # << edit
stopifnot(is.list(lst1) && sum(lst1[[1]]) == 15 && "c" == lst1[[2]][2])

lst2 <- list(
    1:3,
    list(
        c(2, 4, 6),
        c(1, 3, 5)
    )
)
nn <- lst2[[2]][[1]][1]
val <- 2 # << edit
stopifnot(nn == val)

nn <- sum(lst2[[1]][1:2])
val <- 3 # << edit
stopifnot(nn == val)

nn <- 0
for (ii in seq_along(lst2)) {
    nn <- nn + 1
}
val <- 2 # << edit
stopifnot(nn == val)

nn <- 0
for (ii in seq_along(lst2[[2]])) {
    nn <- nn + 1
}
val <- 2 # << edit
stopifnot(nn == val)

vec <- unlist(lst2)
ss <- sum(vec[c(TRUE, FALSE)])
val <- 14 # << edit
stopifnot(ss == val)

vec <- unlist(lst2[2])
val <- vec[length(vec)] # << edit
stopifnot(val == lst2[[2]][[2]][3])

## ----

df <- data.frame(
    "a" = letters[1:5],
    "b" = 1:5
)
l1 <- list(df[["b"]]) # << edit
stopifnot(is.list(l1))

colnames(df) <- paste0("col_", colnames(df)) # << edit
stopifnot(colnames(df)[2] == "col_b")

df[["col_b"]] <- ncol(df)
df2 <- rbind(df, df)
val <- 10 # << edit
stopifnot(val == sum(df[[2]]))

val <- 2 # << edit
stopifnot(val == sum(df2[[1]] == "a"))

df2[[2]][df2[[1]] == "a"] <- 10
val <- 36 # << edit
stopifnot(val == sum(df2[["col_b"]]))

# ----

df3 <- data.frame(
    "a" = 1:5,
    "b" = 2:6
)
res <- 0
for (nn in names(df3)) {
    if (nn == "a") {
        res <- res + sum(df3[[nn]])
    } else {
        res <- res + sum(df3[[nn]][1:2])
    }
}
val <- 20 # << edit
stopifnot(val == res)
