variable "filename" {
  default = "/Users/ej/terraform-variable-examples/pets.txt"
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

variable "myfiles" {
  type        = list(string)
  description = "List of filenames to create"
  default = [
    "/Users/ej/terraform-variable-examples/mice.txt",
    "/Users/ej/terraform-variable-examples/dogs.txt",
    "/Users/ej/terraform-variable-examples/cats.txt",
    "/Users/ej/terraform-variable-examples/cows.txt",
    "/Users/ej/terraform-variable-examples/ducks.txt"
  ]
}