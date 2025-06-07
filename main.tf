/** 
 * # Description
 * 
 * This module is designed for creating a local file using the local_file resource, containing a randam password generated ty the random_password resource
 *
 * ## Usage
 *
 * To use this configuration, ensure you have the necessary AWS credentials set up and run:
 *
 * ```bash
 * terraform init
 * terraform plan
 * terraform apply
 * ```
 *
 * ---
 */

resource "local_file" "main" {
  filename        = "test_file.txt"
  content         = <<-EOF
                      This is my test file in terraform
                      My password is ${random_password.main.result}
                      My file name is "test_file.txt"
                    EOF
  file_permission = 0644
}

resource "random_password" "main" {
  length  = 8
  special = true
  upper   = true
}
 