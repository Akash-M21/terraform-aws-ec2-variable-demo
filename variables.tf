# STRING
variable "aws_region" {
  type = string
}

# NUMBER
variable "instance_count" {
  type = number
}

# BOOL
variable "enable_monitoring" {
  type = bool
}

# LIST
variable "subnet_ids" {
  type = list(string)
}

# MAP
variable "common_tags" {
  type = map(string)
}

# OBJECT
variable "instance_config" {
  type = object({
    ami           = string
    instance_type = string
  })
}

# TUPLE
variable "owner_info" {
  type = tuple([
    string,
    number,
    bool
  ])
}

# SET
variable "security_groups" {
  type = set(string)
}
