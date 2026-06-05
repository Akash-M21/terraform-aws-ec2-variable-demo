aws_region       = "us-east-1"

instance_count   = 2

enable_monitoring = true

subnet_ids = [
  "subnet-123456",
  "subnet-789012"
]

common_tags = {
  Environment = "Dev"
  Project     = "TerraformDemo"
  Owner       = "Akash"
}

instance_config = {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
}

owner_info = [
  "Akash",
  25,
  true
]

security_groups = [
  "sg-12345678",
  "sg-12345678",
  "sg-87654321"
]
