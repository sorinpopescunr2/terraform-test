output "password" {
  description = "The generated password."
  value = random_password.password.result
  sensitive = true
}


output "second_password" {
  description = "The generated password."
  value = random_password.password.result
  sensitive = true
}
