#' Get Path to ffmpeg Executable
#'
#' @return The path to the \code{ffmpeg} executable, or an error.
#' @export
#'
#' @examples
#' ffmpeg_exec()
ffmpeg_exec = function() {
  ffmpeg <- discard(c(Sys.getenv("ffmpeg"), 
                      Sys.which("ffmpeg")), ~ nchar(.x) == 0)[1]
  
  if (is.na(ffmpeg)) {
    stop("Could not find ffmpeg. See the documentation for ari_stitch() for more details.")
  }
  return(ffmpeg)
}