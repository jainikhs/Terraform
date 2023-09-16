variable "vpn_ip" {
    default = "116.50.30.50/32"  
}

variable "instance_type" {
    type = map
    default = {
        ap-south-1a = "t2.micro"
        ap-south-1b = "t2.medium"
    }
}

variable "list" {
  type = list
  default = ["t2.micro" , "t2.medium" , "t2.large"]
}

variable "elb_name" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalancer","prod-loadbalancer"]
}