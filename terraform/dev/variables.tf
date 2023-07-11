variable "project_id" {
  description = "Insira o ID do projeto do Google Cloud Platform"
  type        = string
}

variable "region" {
  description = "Insira a região padrão para os recursos do projeto"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Insira a zona padrão para os recursos do projeto"
  type        = string
  default     = "us-central1-a"
}