resource "local_file" "pet" {
  filename = var.filename
  content  = "My favorite pet is ${random_pet.my-pet.id}, ${var.myvar}"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.seperator
  length    = var.length
}

resource "local_file" "pets" {
  count    = length(var.myfiles)
  filename = var.myfiles[count.index]
  content  = "Content for the file"
}