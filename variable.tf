variable "cidr_block" {
    type = list(string)
    default = [ "172.20.0.0/16", "172.20.10.0/24" ]
  
}

#Create a dynamic port for SG
variable "ports" {
    type = list(number)
    default = [22,443,8080,8081]
}   
#create a range of AMI 
variable "ami" {
    type = list(string)
    default = ["ami-0a606d8395a538502", "ami-033adaf0b583374d4", "ami-0d03b1ad793d7ac93", "ami-0283a57753b18025b"]
  
}
#setup key 
variable "secret_key" {
    type = string
    default = "NJhkY730V6SF8IQ/KXqhEpnX5aGPriYQQVbTUfyP"
  
}
variable "access_key" {
    type = string
    default = "AKIA6KAOWFVQK23DPNEM"
}
#create a range of instance tyoe
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
#create a range of instance tyoe
variable "Keypair" {
    type = list(string)
    default = ["Admin-cfo"]
  
}