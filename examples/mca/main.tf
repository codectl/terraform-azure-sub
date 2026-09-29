module "sub" {
  source  = "codectl/sub/azure"
  version = "~> 1.0"

  for_each = {
    for key, subscription in local.subscriptions : key => subscription
  }

  subscription        = each.value
  billing_mca_account = local.billing_mca_account
}
