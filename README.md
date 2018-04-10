# aws_sg-tf-module
This modules creates AWS Security Groups.

## Example

```hcl-terraform
module "sg" {
  source      = "git@github.com:SCLElections/aws_sg-tf-module"
  name        = "name"
  description = "description"
  vpc         = "VPC-XYZ123"
  tags           = {
    Name                   = "projectname"
    project                = "github-repo-name"
    application            = "project-code"
    environment            = "production"
    cost-center            = "0000"
    type                   = "project-type"
    creator                = "filipe.ferreira@sclgroup.cc"
    responsible-department = "Engineering"
    responsible-party      = "SCL"
  }
}
```

## Input Variables
* **name** - **[string]** - (required) - AWS Resource Name
* **description** - **[string]** - (required) - AWS Resource description
* **tags** - **[map]** - (required) - AWS resource tags following company recommended.
* **vpc** - **[string]** - (required) - VPC for the security group. 

## Output Variables
* **id** - ID of the Security Groups.