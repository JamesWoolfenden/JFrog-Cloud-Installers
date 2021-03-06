variable "aws_region" {
  type        = string
  description = "AWS region to launch servers."
  default     = "us-west-1"
}

variable "key_name" {
  type        = string
  description = "Desired name of AWS key pair"
  default     = "jfrog"
}

variable "artifactory_version" {
  type        = string
  description = "Artifactory version to deploy"
  default     = "6.9.0"
}

variable "artifactory_license_1" {
  type        = string
  description = "Artifactory Enterprise License"
  default     = ""
}

variable "artifactory_license_2" {
  type        = string
  description = "Artifactory Enterprise License"
  default     = ""
}

variable "artifactory_license_3" {
  type        = string
  description = "Artifactory Enterprise License"
  default     = ""
}

variable "artifactory_license_4" {
  type        = string
  description = "Artifactory Enterprise License"
  default     = ""
}

variable "artifactory_license_5" {
  type        = string
  description = "Artifactory Enterprise License"
  default     = ""
}

variable "volume_size" {
  description = "Disk size for each EC2 instances"
  default     = 250
}

variable "artifactory_instance_type" {
  type        = string
  default     = "m4.xlarge"
  description = "Artifactory EC2 instance type"
}

variable "extra_java_options" {
  type        = string
  default     = "-server -Xms2g -Xmx14g -Xss256k -XX:+UseG1GC -XX:OnOutOfMemoryError=\\\\\\\"kill -9 %p\\\\\\\""
  description = "Setting Java Memory Parameters for Artifactory. Learn about system requirements for Artifactory https://www.jfrog.com/confluence/display/RTF/System+Requirements#SystemRequirements-RecommendedHardware."
}

variable "bucket_name" {
  type        = string
  description = "AWS S3 Bucket name"
  default     = "artifactory-enterprise-bucket"
}

variable "db_name" {
  type        = string
  description = "MySQL database name"
  default     = "artdb"
}

variable "db_user" {
  type        = string
  description = "Database user name"
  default     = "artifactory"
}

variable "db_instance_class" {
  type        = string
  description = "The database instance type"
  default     = "db.t2.small"
}

variable "db_password" {
  type        = string
  description = "Database password"
  default     = "password"
}

variable "db_allocated_storage" {
  type        = string
  description = "The size of the database (Gb)"
  default     = "5"
}

variable "master_key" {
  description = "Master key for Artifactory cluster. Generate master.key using command '$openssl rand -hex 16'"
  default     = "35767fa0164bac66b6cccb8880babefb"
}

variable "secondary_node_count" {
  description = "Desired number of Artifactory secondary nodes"
  default     = 0
}

#TODO Remove
variable "ssl_certificate" {
  description = "To use Artifactory as docker registry you need to provide wild card valid Certificate. Provide your SSL Certificate."
  default     = "<cert contents>"
}

#TODO Remove
variable "ssl_certificate_key" {
  description = "Provide your SSL Certificate key"
  default     = "<cert contents>"
}

variable "certificate_domain" {
  description = "Provide your Certificate Domain Name. For e.g jfrog.team for certificate with *.jfrog.team"
  default     = "artifactory"
}

variable "artifactory_server_name" {
  description = "Provide artifactory server name to be used in Nginx. e.g artifactory for artifactory.jfrog.team"
  default     = "artifactory"
}

variable "elb_name" {
  type    = string
  default = "artifactoryelb"
}

variable "common_tags" {
  type = map
  default = {
  "createdby" = "Terraform" }
}

variable "access_cidr" {
  type    = list
  default = ["0.0.0.0/0"]
}

variable "vpc_cidr" {
  type    = list
  default = ["10.0.0.0/16"]
}

variable "ssh_access" {
  type    = list
  default = ["0.0.0.0/0"]
}

variable "artifactory_sg_name" {
  type        = string
  default     = "artifactory_sg"
  description = "(optional) describe your variable"
}

variable "sse_algorithm" {
  description = "The type of encryption algorithm to use"
  type        = string
  default     = "aws:kms"
}
