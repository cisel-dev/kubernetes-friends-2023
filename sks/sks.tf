module "sks" {
  source  = "camptocamp/sks/exoscale"
  version = "0.4.1"

  name = "lfs2023"
  zone = "ch-gva-2"
  kubernetes_version = "1.24.12"

  nodepools = {
    "compute" = {
      instance_type = "standard.medium"
      size          = 3
    },
  }
}

output "kubeconfig" {
  value     = module.sks.kubeconfig
  sensitive = true
}
