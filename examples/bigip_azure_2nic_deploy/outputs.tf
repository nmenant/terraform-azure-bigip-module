output mgmtPublicIP {
  value = module.bigip.*.mgmtPublicIP
}

output mgmtPublicDNS {
  value = module.bigip.*.mgmtPublicDNS
}
output bigip_username {
  value = module.bigip.*.f5_username
}

output bigip_password {
  value = module.bigip.*.bigip_password
}

output mgmtPort {
  value = module.bigip.*.mgmtPort
}

output mgmtPublicURL {
  description = "mgmtPublicURL"
  value       = [for i in range(var.instance_count) : format("https://%s:%s", module.bigip[i].mgmtPublicDNS, module.bigip[i].mgmtPort)]
}

