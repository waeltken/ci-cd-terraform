locals {
  # create locals for tags 
  tags = {
    creator = "Clemens Wältken"
    purpose = "test terraform with Azure"
    env     = "dev"
  }

  storage_name = "stgacc${random_string.suffix.result}"
}

# create random hex for random suffix
resource "random_string" "suffix" {
  length  = 4
  special = false
  upper   = false
}
