## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.14.0 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine) | resource |
| [hcp_packer_artifact.this](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_artifact) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hcp_project"></a> [hcp\_project](#input\_hcp\_project) | hcp project id | `string` | `"e22399dc-b1ac-477f-b8f7-c5b4c9dfa538"` | no |
| <a name="input_image_channel"></a> [image\_channel](#input\_image\_channel) | hcp packer channel | `string` | `"prod"` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | hcp packer bucket (image name) | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | azure location | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | virtual machine name | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | resource group name | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | vnet subnet for virtual machine | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | custom tags | `map(string)` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | virtual machine size | `string` | `"Standard_D2s_v3"` | no |

## Outputs

No outputs.
