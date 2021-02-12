###################################
## Nginx Plus Images - Variables ##
###################################

variable "nginx-publisher" {
  type        = string
  description = "Publisher ID for Nginx" 
  default     = "nginxinc" 
}

## Nginx Offers ##
variable "nginx-plus-offer" {
  type        = string
  description = "Offer ID for Nginx" 
  default     = "nginx-plus-v1" 
}

variable "nginx-plus-ent-offer" {
  type        = string
  description = "Offer ID for Nginx" 
  default     = "nginx-plus-ent-v1" 
}

## Nginx Plus SKUs ##

variable "nginx-plus-centos7" {
  type        = string
  description = "Publisher ID for Nginx in CentOS 7" 
  default     = "nginx-plus-centos7" 
}

variable "nginx-plus-rhel7" {
  type        = string
  description = "Publisher ID for Nginx in RedHat 7" 
  default     = "nginx-plus-rhel7" 
}

variable "nginx-plus-rhel8" {
  type        = string
  description = "Publisher ID for Nginx in RedHat 8" 
  default     = "nginx-plus-rhel8" 
}

variable "nginx-plus-ubuntu-1604" {
  type        = string
  description = "Publisher ID for Nginx in Ubuntu 16.04" 
  default     = "nginx-plus-ub1604" 
}

variable "nginx-plus-ubuntu-1804" {
  type        = string
  description = "Publisher ID for Nginx in Ubuntu 18.04" 
  default     = "nginx-plus-ub1804" 
}

## Nginx Plus Ent SKUs ##

variable "nginx-plus-ent-centos7" {
  type        = string
  description = "Publisher ID for Nginx Ent in CentOS 7" 
  default     = "nginx-plus-ent-centos7" 
}

variable "nginx-plus-ent-rhel7" {
  type        = string
  description = "Publisher ID for Nginx Ent in RedHat 7" 
  default     = "nginx-plus-ent-rhel7" 
}

variable "nginx-plus-ent-ubuntu-1804" {
  type        = string
  description = "Publisher ID for Nginx Ent in Ubuntu 18.04" 
  default     = "nginx-plus-ent-ub1804" 
}