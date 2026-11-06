stopifnot(file.exists("final.Rmd"))

tree_dir <- "Completed_5911sp_topoCons_FBDasZhouEtAl"
archive <- paste0(tree_dir, ".zip")
url <- paste0("https://data.vertlife.org/mammaltree/", archive)

if (!file.exists(archive)) {
  options(timeout = max(3600, getOption("timeout")))
  download.file(url, destfile = archive, mode = "wb")
}

# Verify the archive before extraction.
expected_md5 <- "e24cc6a6e5a1844d07b5f0c8d24430bf"
if (unname(tools::md5sum(archive)) != expected_md5) {
  stop("Archive checksum mismatch. Delete ", archive, " and rerun this step.")
}

# The archive already contains the top-level tree directory.
unzip(archive, exdir = ".")
tree_files <- list.files(tree_dir, pattern = "\\.tre$")
stopifnot(length(tree_files) == 10000L)