module "ec2" {
    source = "../terraform-aws-ec2"
    # here ami_id is VARAIBLE expected by MODULE , not ARGUMENTS of RESOURCE definition.
    #ami_id = "ami-09c813fb71547fc4f"
    #you can also create varaibles or else you can directly use values here
    ami_id = var.ami_something
    # ami_id is name of varible of terraform-aws-ec2 , while ami_something varaible name of this module
    instance_type = "t3.small"
    security_group_ids = ["sg-0996d6bc9e1352780"]
}