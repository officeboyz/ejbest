variable "filename" {
  default = ".files/pets.txt"
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
    ".files/mice.txt",
    ".files/dogs.txt",
    ".files/cats.txt",
    ".files/cows.txt",
    ".files/ducks.txt"
  ]
}