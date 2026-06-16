resource "aws_subnet" "playground_eks_vpc_public_eu_west_1a" {
  tags = {
    Environment = "dev"
    Name = "playground-eks-vpc-public-eu-west-1a"
    Owner = "TerraForm"
    Project = "eks::playground-eks"
    Team = "DevOps"
    "kubernetes.io/role/elb" = "1"
  }
  tags_all = {
    Environment = "dev"
    Name = "playground-eks-vpc-public-eu-west-1a"
    Owner = "TerraForm"
    Project = "eks::playground-eks"
    Team = "DevOps"
    "kubernetes.io/role/elb" = "1"
  }
  availability_zone = "eu-west-1a"
  cidr_block = "10.0.0.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id = "vpc-00d9d4c1f5b8816ee"
  provider = aws.eu_west_1
}