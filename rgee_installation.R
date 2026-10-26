## not run: tutorial from https://r-spatial.github.io/rgee/ ##
install.packages("rgee")
install.packages(c("remotes", "googledrive"))

# Get the username
HOME <- Sys.getenv("HOME")

# 1. Install miniconda
reticulate::install_miniconda()

# 2. Install Google Cloud SDK
system("curl -sSL https://sdk.cloud.google.com | bash")

# 3 Set global parameters
Sys.setenv("RETICULATE_PYTHON" = sprintf("%s/.local/share/r-miniconda/bin/python3", HOME))

Sys.setenv("EARTHENGINE_GCLOUD" = sprintf("%s/google-cloud-sdk/bin/", HOME))

# 4 Install rgee Python dependencies
ee_install() 

# 5. Authenticate and initialize your Earth Engine session
# Replace "my-project-id" with the ID of the Cloud project you created above 
ee_Initialize(project = "my-project-id") 