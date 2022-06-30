variable "gitops_repo_host" {
  type = string
  description = "The host for the git repository."
  default = ""
}
variable "gitops_repo_type" {
  type = string
  description = "[Deprecated] The type of the hosted git repository."
  default = ""
}
variable "gitops_repo_org" {
  type = string
  description = "The org/group where the git repository exists/will be provisioned."
  default = ""
}
variable "gitops_repo_project" {
  type = string
  description = "The project that will be used for the git repo. (Primarily used for Azure DevOps repos)"
  default = ""
}
variable "gitops_repo_username" {
  type = string
  description = "The username of the user with access to the repository"
  default = ""
}
variable "gitops_repo_token" {
  type = string
  description = "The personal access token used to access the repository"
  default = ""
}
variable "gitops_repo_gitea_host" {
  type = string
  description = "The host for the git repository."
  default = ""
}
variable "gitops_repo_gitea_org" {
  type = string
  description = "The org/group where the git repository exists/will be provisioned."
  default = ""
}
variable "gitops_repo_gitea_username" {
  type = string
  description = "The username of the user with access to the repository"
  default = ""
}
variable "gitops_repo_gitea_token" {
  type = string
  description = "The personal access token used to access the repository"
  default = ""
}
variable "gitops_repo_repo" {
  type = string
  description = "The short name of the repository (i.e. the part after the org/group name)"
}
variable "gitops_repo_branch" {
  type = string
  description = "The name of the branch that will be used. If the repo already exists (provision=false) then it is assumed this branch already exists as well"
  default = "main"
}
variable "gitops_repo_public" {
  type = bool
  description = "Flag indicating that the repo should be public or private"
  default = false
}
variable "gitops_repo_gitops_namespace" {
  type = string
  description = "The namespace where ArgoCD is running in the cluster"
  default = "openshift-gitops"
}
variable "gitops_repo_dev_server_name" {
  type = string
  description = "The name of the cluster that will be configured via gitops. This is used to separate the config by cluster"
  default = "default"
}
variable "gitops_repo_strict" {
  type = bool
  description = "Flag indicating that an error should be thrown if the repo already exists"
  default = false
}
variable "argocd-bootstrap_bootstrap_prefix" {
  type = string
  description = "The prefix used in ArgoCD to bootstrap the application"
  default = ""
}
variable "argocd-bootstrap_create_webhook" {
  type = bool
  description = "Flag indicating that a webhook should be created in the gitops repo to notify argocd of changes"
  default = true
}
variable "dev_config_banner_background_color" {
  type = string
  description = "The background color of the top banner. This value can be a named color (e.g. purple, red) or an RGB value (#FF0000)."
  default = "purple"
}
variable "dev_config_banner_text_color" {
  type = string
  description = "The text color for the top banner. This value can be a named color (e.g. purple, red) or an RGB value (#FF0000)."
  default = "white"
}
variable "dev_config_banner_text" {
  type = string
  description = "The text that will appear in the top banner in the cluster"
}
variable "gitops-console-link-job_cluster_ingress_hostname" {
  type = string
  description = "Ingress hostname of the IKS cluster."
  default = ""
}
variable "gitops-console-link-job_cluster_type" {
  type = string
  description = "The cluster type (openshift or ocp3 or ocp4 or kubernetes)"
  default = "ocp4"
}
variable "gitops-console-link-job_tls_secret_name" {
  type = string
  description = "The name of the secret containing the tls certificate values"
  default = ""
}
variable "toolkit_namespace_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "toolkit"
}
variable "toolkit_namespace_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "toolkit_namespace_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "toolkit_namespace_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "ibmcloud_api_key" {
  type = string
  description = "The IBM Cloud api key"
}
variable "dev_resource_group_name" {
  type = string
  description = "The name of the resource group"
}
variable "dev_resource_group_sync" {
  type = string
  description = "Value used to order the provisioning of the resource group"
  default = ""
}
variable "region" {
  type = string
  description = "the value of region"
}
variable "dev_cluster_name" {
  type = string
  description = "The name of the cluster that will be created within the resource group"
  default = ""
}
variable "worker_count" {
  type = number
  description = "The number of worker nodes that should be provisioned for classic infrastructure"
  default = 3
}
variable "dev_cluster_flavor" {
  type = string
  description = "The machine type that will be provisioned for classic infrastructure"
  default = ""
}
variable "ocp_version" {
  type = string
  description = "The version of the OpenShift cluster that should be provisioned (format 4.x)"
  default = "4.10"
}
variable "dev_cluster_exists" {
  type = bool
  description = "Flag indicating if the cluster already exists (true or false)"
  default = true
}
variable "dev_cluster_disable_public_endpoint" {
  type = bool
  description = "Flag indicating that the public endpoint should be disabled"
  default = false
}
variable "name_prefix" {
  type = string
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default = ""
}
variable "dev_cluster_ocp_entitlement" {
  type = string
  description = "Value that is applied to the entitlements for OCP cluster provisioning"
  default = "cloud_pak"
}
variable "dev_cluster_force_delete_storage" {
  type = bool
  description = "Attribute to force the removal of persistent storage associtated with the cluster"
  default = false
}
variable "dev_cluster_tags" {
  type = string
  description = "Tags that should be added to the instance"
  default = "[]"
}
variable "dev_cluster_vpc_name" {
  type = string
  description = "Name of the VPC instance that will be used"
  default = ""
}
variable "dev_cluster_vpc_subnet_count" {
  type = number
  description = "Number of vpc subnets"
  default = 0
}
variable "dev_cluster_vpc_subnets" {
  type = string
  description = "List of subnets with labels"
  default = "[]"
}
variable "dev_cluster_cos_id" {
  type = string
  description = "The crn of the COS instance that will be used with the OCP instance"
  default = ""
}
variable "dev_cluster_kms_enabled" {
  type = bool
  description = "Flag indicating that kms encryption should be enabled for this cluster"
  default = false
}
variable "dev_cluster_kms_id" {
  type = string
  description = "The crn of the KMS instance that will be used to encrypt the cluster."
  default = null
}
variable "dev_cluster_kms_key_id" {
  type = string
  description = "The id of the root key in the KMS instance that will be used to encrypt the cluster."
  default = null
}
variable "dev_cluster_kms_private_endpoint" {
  type = bool
  description = "Flag indicating that the private endpoint should be used to connect the KMS system to the cluster."
  default = true
}
variable "dev_cluster_login" {
  type = bool
  description = "Flag indicating that after the cluster is provisioned, the module should log into the cluster"
  default = false
}
variable "sealed-secret-cert_cert" {
  type = string
  description = "The public key that will be used to encrypt sealed secrets. If not provided, a new one will be generated"
  default = ""
}
variable "sealed-secret-cert_private_key" {
  type = string
  description = "The private key that will be used to decrypt sealed secrets. If not provided, a new one will be generated"
  default = ""
}
variable "sealed-secret-cert_cert_file" {
  type = string
  description = "The file containing the public key that will be used to encrypt the sealed secrets. If not provided a new public key will be generated"
  default = ""
}
variable "sealed-secret-cert_private_key_file" {
  type = string
  description = "The file containin the private key that will be used to encrypt the sealed secrets. If not provided a new private key will be generated"
  default = ""
}