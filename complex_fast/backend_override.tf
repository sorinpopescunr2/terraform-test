terraform {
  backend "local" {
    path = "my_local_backend_override/state.tfstate"
  }
}