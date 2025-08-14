d <- read.csv('Dugong ASCII combo XS & LS.txt', header = FALSE, sep=' ')
colnames(d) <-  c('X', 'Y', 'Z', 'M')
df <- d[d$M>10,]
write.table(df,'dugong_test.txt', row.names = FALSE, quote = FALSE, sep=' ')

#Values to subtract to center model in Blender
max(df$M)
mean(df$X)
mean(df$Y)
mean(df$Z)

#Voxel size 
diff(unique(d$X))[1]*2
diff(unique(d$Y))[1]*2
diff(unique(d$Z))[1]*2
