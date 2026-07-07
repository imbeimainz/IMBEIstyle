#' Create an R Markdown Beamer presentation, IMBEI styled
#'
#' @param file_name Character string, the name of the file for the presentation -
#' no need to specify the .Rmd extension.
#' @param folder_name Character string, pointing to the folder where the 
#' presentation and its associated files should be created. Defaults to NULL, which
#' falls back to the current working directory.
#'
#' @returns Invisibly, the path to the created R Markdown source file for the
#' presentation
#'
#' @export
#'
#' @importFrom cli cli_alert_info cli_alert_success cli_alert_warning
#' @importFrom usethis edit_file
#'
create_IMBEI_beamer <- function(file_name = NULL,
                                folder_name = NULL) {

  if (is.null(file_name)) {
    stop("Please provide a valid file_name")
  }

  if (is.null(folder_name)) {
    folder_name <- file_name
  }

  if (!dir.exists(folder_name)) {
    dir.create(folder_name)
    cli::cli_alert_info(paste0("Created folder into ", folder_name))
  } else {
    cli::cli_alert_info(paste0("Using folder, ", folder_name))
  }

  # Copy skeleton.Rmd from the template
  template_path <- system.file("rmarkdown", "templates", "IMBEI_beamer_short", "skeleton", "skeleton.Rmd", package = "IMBEIstyle")
  dest_file <- file.path(folder_name, paste0(file_name, ".Rmd"))
  file.copy(from = template_path, to = dest_file, overwrite = TRUE)

  # Copy logo file if it exists in the template
  logo_template_path <- system.file("rmarkdown", "templates", "IMBEI_beamer_short", "skeleton", "Universitaetsmedizin.jpg", package = "IMBEIstyle")
  if (file.exists(logo_template_path)) {
    file.copy(from = logo_template_path, to = file.path(folder_name, "Universitaetsmedizin.jpg"), overwrite = TRUE)
    cli::cli_alert_info("Copied logo file (Universitaetsmedizin.jpg) to the folder.")
  }

  # Copy the LaTeX template file
  tex_template_path <- system.file("rmarkdown", "templates", "IMBEI_beamer_short", "skeleton", "IMBEI_beamer_short_template.tex", package = "IMBEIstyle")
  if (file.exists(tex_template_path)) {
    file.copy(from = tex_template_path, to = file.path(folder_name, "IMBEI_beamer_short_template.tex"), overwrite = TRUE)
    cli::cli_alert_info("Copied LaTeX template (IMBEI_beamer_short_template.tex) to the folder.")
  }

  # Open the new file in the editor
  usethis::edit_file(dest_file)

  cli::cli_alert_success(
    paste0("Beamer presentation created in ", folder_name, "/", paste0(file_name, ".Rmd")))

  return(invisible(dest_file))
}