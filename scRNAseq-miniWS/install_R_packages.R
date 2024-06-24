install.packages("remotes")
install.packages("BiocManager")
install.packages("data.table")

library(remotes)
library(BiocManager)
library(data.table)

# Function to install packages based on their source and version
install_packages <- function(packages) {
  failed_packages <- list()
  
  for (pkg in packages) {
    success <- FALSE
    
    # Try to install from CRAN
    tryCatch({
      remotes::install_version(pkg$package, version = pkg$version, upgrade = "never")
      cat(paste("Successfully installed", pkg$package, "version", pkg$version, "from CRAN\n"))
      success <- TRUE
    }, error = function(e) {
      cat(paste("Failed to install", pkg$package, "version", pkg$version, "from CRAN\n"))
    })
    
    # If CRAN installation failed, try Bioconductor
    if (!success) {
      tryCatch({
        BiocManager::install(pkg$package, version = pkg$version)
        cat(paste("Successfully installed", pkg$package, "version", pkg$version, "from Bioconductor\n"))
        success <- TRUE
      }, error = function(e) {
        cat(paste("Failed to install", pkg$package, "version", pkg$version, "from Bioconductor\n"))
      })
    }
    
    # If both installations failed, record the package details
    if (!success) {
      failed_packages <- append(failed_packages, list(pkg))
    }
  }
  
  # Return the list of failed package installations
  return(failed_packages)
}

# Read the tab-delimited file
packages_df <- fread("R_packages.txt")

# Convert data.table to list of lists
packages <- split(packages_df, 1:nrow(packages_df))

# Call the function to install the packages
failed_packages <- install_packages(packages)

if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")

tryCatch({	
  BiocManager::install("ComplexHeatmap")
  print('ComplexHeatmap Successfully installed')
}, error = function(e) {
  print('ComplexHeatmap Failed again')
})

tryCatch({	
  remotes::install_github('chris-mcginnis-ucsf/DoubletFinder')
  print('DoubletFinder Successfully installed')
}, error = function(e) {
  print('DoubletFinder Failed again')
})

tryCatch({	
  remotes::install_version("Seurat", version = "4.0.5")
  print('Seurat Successfully installed')
}, error = function(e) {
  print('Seurat Failed again')
})

tryCatch({	
  devtools::install_github('satijalab/seurat-data@v0.2.1')
  print('SeuratData Successfully installed')
}, error = function(e) {
  print('SeuratData Failed again')
})

#tryCatch({	
#  devtools::install_github("kstreet13/slingshot@v1.8.0")
#  print('slingshot Successfully installed')
#}, error = function(e) {
#  print('slingshot Failed again')
#})

tryCatch({	
  BiocManager::install("tradeSeq")
  print('tradeSeq Successfully installed')
}, error = function(e) {
  print('tradeSeq Failed again')
})

tryCatch({	
  BiocManager::install("scDblFinder")
  print('scDblFinder Successfully installed')
}, error = function(e) {
  print('scDblFinder Failed again')
})
