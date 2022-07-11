variable "instance" {
   description = "Instance name"
}

variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "ap-southeast-2"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = ""
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = ""
}

variable "aws_amis" {
   default = {
       ap-southeast-2 = "ami-0e040c48614ad1327"
   }
}

variable "instance_type" {
   description = "Type of AWS EC2 instance."
   default     = "t2.micro"
}

# variable "public_key_path" {
#    description = "Enter the path to the SSH Public Key to add to AWS."
#    default     = "~/.ssh/id_rsa.pub"
# }

variable "key_name" {
   description = "AWS key name"
   default     = "direktiv_ssh_sydney"
}

variable "instance_count" {
   default = 1
}
