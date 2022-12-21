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
    type = string
    default = "ami-0beaa649c482330f7"
  
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