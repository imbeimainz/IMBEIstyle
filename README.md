
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IMBEIstyle

<!-- badges: start -->

<!-- badges: end -->

The goal of IMBEIstyle is to provide a simple way to create an analysis
report, styled up with some fancy options and some UM corporate design
colors, and a revealjs quarto presentation, in a similar fashion.

More content could cover the need of e.g. a poster template - especially
if doable within the quarto framework.

## Installation

You can install the development version of IMBEIstyle like so:

``` r
library("remotes")
remotes::install_github("imbeimainz/IMBEIstyle")
```

## Example

Here is how you can create the reports and presentations with this
package

``` r
library("IMBEIstyle")

IMBEIstyle::create_bioinfo_html(file_name = "myfirstreport",
                                report_folder = tempdir())
#> ℹ Using report folder, /var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T//RtmpPQ1HvM
#> ℹ Created '_extensions' folder into /var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T//RtmpPQ1HvM
#> ℹ bioinfo-html was installed to _extensions folder in the specified report directory.
#> ℹ Copied auxiliary files into the toplevel report folder.
#> You might want to edit the corresponding lines in the yaml section
#> ☐ Edit
#>   '/var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T/RtmpPQ1HvM/myfirstreport.qmd'.
#> ✔ Have fun with your report - available inside the folder /var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T//RtmpPQ1HvM

IMBEIstyle::create_bioinfo_revealjs("myveryfirstpresentation",
                                    presentation_folder = tempdir())
#> ℹ Using presentation folder, /var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T//RtmpPQ1HvM
#> ℹ bioinfo-revealjs was installed to _extensions folder in the specified report directory.
#> ℹ Copied auxiliary files into the toplevel presentation folder.
#> You might want to edit the corresponding lines in the yaml section
#> ☐ Edit
#>   '/var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T/RtmpPQ1HvM/myveryfirstpresentation.qmd'.
#> ✔ Have fun with your presentation - available inside the folder /var/folders/l7/zzmm12b945z_f71ljwfqj7z00000gn/T//RtmpPQ1HvM
```
