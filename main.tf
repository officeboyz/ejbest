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
  value       = random_pet.my-pet.id
  description = "record the value of the pet ID generated"
}

resource "local_file" "pets" {
  filename = var.myfile[count.index]
  count = length(var.myfile)
}
