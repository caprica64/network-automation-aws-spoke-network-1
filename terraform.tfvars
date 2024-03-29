#Region
region = "sa-east-1"

#VPC variables
vpc_name = "spoke1"
cidr_block = "10.1.0.0/16"

intra_subnet_1a_cidr = "10.1.0.0/20"
intra_subnet_1c_cidr = "10.1.16.0/20"

#Transit Gateway id
tgw_id = "tgw-08ab0ffe6166e4517"

#Transit network destination prefixes
transit_cidr = "10.0.0.0/16"
