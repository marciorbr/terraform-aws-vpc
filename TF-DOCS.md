<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/eip) | resource |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/nat_gateway) | resource |
| [aws_route.private](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/route) | resource |
| [aws_route.public](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/route) | resource |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/route_table) | resource |
| [aws_route_table.public_internet_access](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/route_table) | resource |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/route_table_association) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/vpc) | resource |
| [aws_vpc_ipv4_cidr_block_association.main](https://registry.terraform.io/providers/hashicorp/aws/6.11.0/docs/resources/vpc_ipv4_cidr_block_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The CIDR block for the VPC | `string` | n/a | yes |
| <a name="input_envionment"></a> [envionment](#input\_envionment) | The environment (e.g., dev, prod) | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | A list of maps defining the private subnets | <pre>list(object({<br/>    name              = string<br/>    cidr              = string<br/>    availability_zone = string<br/>  }))</pre> | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the project | `string` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | A list of maps defining the public subnets | <pre>list(object({<br/>    name              = string<br/>    cidr              = string<br/>    availability_zone = string<br/>  }))</pre> | n/a | yes |
| <a name="input_vpc_additional_cidrs"></a> [vpc\_additional\_cidrs](#input\_vpc\_additional\_cidrs) | A list of additional CIDR blocks to associate with the VPC | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of private subnet IDs |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of public subnet IDs |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->