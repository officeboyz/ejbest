variable "filename" {
  default = "/Users/ej/terraform-local-file/pets.txt"
}

variable "myvar" {
  default = "I love pets!"
}

variable "prefix" {
  default = "Mrs"
}

variable "seperator" {
  default = "."
}

variable "length" {
  default = "1"
}

variable "filenames" {
  default = [
    "/Users/ej/terraform-local-file/pets.txt",
    "/Users/ej/terraform-local-file/dogs.txt",
    "/Users/ej/terraform-local-file/cats.txt",
    "/Users/ej/terraform-local-file/cows.txt",
    "/Users/ej/terraform-local-file/ducks.txt"
  ]
}