library(RMySQL)
library(R.utils)

# annotation of human genome

#' creates connection to local UCSC database
#'
#' @param genome_freeze is geanome name as defined by UCSC
#' @param config_file should be absolute path 
#' @return connection object (to be used with all API)
connect_to_genome_db <- function(genome_freeze, config_file) {
    stopifnot(genome_freeze == "hg18")
    stopifnot(isAbsolutePath(config_file))
    dbConnect(MySQL(), default.file=config_file, dbname=genome_freeze)
}


