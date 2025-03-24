resource "local_file" "f1" {
  filename        = "test_file.txt"
  content         = <<-EOF
                      This is my test file in terraform
                      My password is ${random_password.random.result}
                      My file name is "test_file.txt"
                    EOF
  file_permission = 0644
}

resource "random_password" "random" {
  length  = 8
  special = true
  upper   = true
}
 