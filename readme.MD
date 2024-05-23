# custom aws security group module

This module is developed for joindevops.com. In this module you can find resource blocks for below mentioned services in aws. This module can be used to create security groups in vpc

* Security group
* Ingress rules
* Egress rules

## Inputs
* project_name(required):Type is string. User should provide the value as per their project name.
* environment(optional):Type is string. Default value is empty.
* common_tags(required):Type is map. User should provide the tags related to their project.
* sg_name(required):Type is string. User should provide the value as per their requirement.
* sg_desc(required):Type is string. User should provide the value as per their requirement.
* sg_tags(optional):Type is map. Default value is empty.
* vpc_id(required):Type is string. User should provide the value as per their requirement.
* outbound_rules(optional):Type is list. Default value is provided as all ports,all protocols with   cidr_blocks  as "0.0.0.0/0"
* inbound_rules(required):Type is list.  User should provide the value as per their requirement.

## Outputs
* sg_id:security group id is created