resource "local_file" "pet" {
  filename = var.filename
  content  = "My favorite pet is ${random_pet.my-pet.id}, ${var.myvar}"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.seperator
  length    = var.length
}

output "pet-name" {
  description = "record the value of the pet ID generated"
}

resource "local_file" "pets" {
  count    = length(var.myfiles)
  myfiles  = var.myfiles[count.index]
  content  = "Content for the file"
}