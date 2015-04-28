library(RMySQL)
library(R.utils)

# annotation of human genome

# site is an inteegration site which is defined by: chromosome, position and strand
# int_site is a dataframe with 3 columns: chr, pos, strand

#' creates connection to local UCSC database
#'
#' @param genome_freeze is geanome name as defined by UCSC
#' @param config_file should be absolute path (the database name is ignored)
#' @return connection object (to be used with all API)
connect_to_genome_db <- function(genome_freeze, config_file) {
    stopifnot(genome_freeze == "hg18")
    stopifnot(isAbsolutePath(config_file))
    dbConnect(MySQL(), default.file=config_file, dbname=genome_freeze)
}

#window_size

#' check if site is inside of the RefSeq gene.
#' @return df with int site columns and 
#' additional column is_in_gene TRUE if site is within a gene FALSE if outside
is_site_in_gene <- function(db_con, int_site) {

}

#' find gene symbol 
#' @return df with int site columns and 
#' additional column gene_symbol
#' if site is not inside of gene return NA
get_site_gene <- function(db_con, int_site) {

}


#' find gene width.
#' @return df with gene symbol and
#' additional column gene_width
#' if gene symbol is not known TODO: how to handle this edge case
get_gene_width <- function(db_con, gene_symbol) {

}

#' find intergenic distance
#' @return df with site and
#' additional column intergenic_width
#' if site is inside of gene return NA
get_intergenic_width <- function(db_con, int_site) {

}

#' find number of base pairs to the closes transcription start site.
#' @return distance 
get_closest_TSS <- function(db_con, int_site) {

}

#' find number of base pairs to the closes transcription end site(T_End_S).
#' @return distance
get_closest_T_End_S <- function(db_con, int_site) {

}

#' get dnase hypersensitive loci density
#' 
#' density is defined as # of dnases/ window size(?)
get_DNASE_density <- function(db_con, int_site, window_size) {
    stopifnot(length(window_size) != 1)

}

#' get CpG islands density
#' 
get_CpG_density <- function(db_con, int_site, window_size) {
    stopifnot(length(window_size) != 1)

}

#' get RefSeq gene density
#' 
get_RefSeq_gene_density <- function(db_con, int_site, window_size) {
    stopifnot(length(window_size) != 1)

}

#'
get_GC_percentage <- function(db_con, int_site, window_size) {
    stopifnot(length(window_size) != 1)

}


