# convertin to csv
rm(list = ls())
files <- list.files("./data/", pattern = ".RData")
ls_o <- ls_n <- NA

for (i in files) {
  ls_o <- ls()
  load(paste0("./data/", i))
  ls_n <- ls()
  n_obj <- setdiff(ls_n, ls_o)
  write.csv(get(n_obj), file = paste0("./data/", n_obj, ".csv"), row.names = FALSE)
}
