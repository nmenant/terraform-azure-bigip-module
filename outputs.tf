output "bigip_public_ip" {
  value = module.bigip1nic.f5_public_ip
}

output "bigip_private_ip" {
  value = module.bigip1nic.f5_private_ip
}
output "bigip_username" {
  value = module.bigip1nic.f5_username
}