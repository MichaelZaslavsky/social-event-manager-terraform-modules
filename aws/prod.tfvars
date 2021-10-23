# Auto fill variables for prod environment
region                     = "us-east-1"
instance_type              = "t2.small"
enable_detailed_monitoring = true
allow_ports                = ["80", "443"]

common_tags = {
  Owner       = "Michael Zaslavsky"
  Project     = "Phoenix"
  CostCenter  = "1234567"
  Environment = "prod"
}
