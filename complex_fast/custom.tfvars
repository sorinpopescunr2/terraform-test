restag = "TF-custom-tfvars-dev-test"
docker_ports = [
  {
    internal = 10200
    external = 10201
    protocol = "udp"
  },
  { internal = 8080, external = 80, protocol = "tcp" }
]
