## 1. Define matrix mymat by replicating the sequence 1:5 for 4 times 
and transforming into a matrix, sum over rows and columns.

Answer: 

we create matrix mymat and use rep() function 

mymat <- matrix(rep(1:5,4), nrow = 4, ncol = 4, byrow = FALSE)
colnames(mymat) <- c("col1", "col2", "col3","col4")
rownames(mymat) <- c("row1", "row2","row3","row4")
mymat

## we can do like this too for row/col sum

rowSums(mymat)
colSums(mymat)

col.sums <- apply(mymat, 2, sum)
col.sums
row.sums <- apply(mymat, 1, sum)
row.sums
rbind(mymat ,Rtot = row.sums)
cbind(mymat ,Ctot = col.sums)
rbind(cbind(mymat, Rtot = row.sums), Ctot = c(col.sums, sum(col.sums)))



  