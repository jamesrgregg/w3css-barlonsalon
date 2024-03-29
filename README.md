# Deploy ECS cluster with EC2 instances
Execute the ecs-cli commands in order to create a new AWS Cloudformation stack.

## Configure ecs-cli
ecs-cli configure --region us-west-2 --cluster nginx-salon

## Spin up the EC2 instances using keypair
ecs-cli up --keypair ecs-us-west-2 --capability-iam --size 2 --instance-type t2.micro

## Install the Docker containers on the cluster
ecs-cli compose --file aws-compose.yml up

## Check the ECS cluster
ecs-cli ps

## Delete the ECS Cluster
ecs-cli down

### Reference:
[Docker Curriculum](https://docker-curriculum.com/#aws-elastic-container-service)

### Notes
Note: Initial Configuration of the ECS cluster with Fargate was via AWS Console, not ecs-cli.  
The ecs-fargate-barlonsalon.yaml was the template which was created by AWS Cloudformation as viewed from the Designer.  It has not been tested.
Somehow the second launch via the ecs-cli automatically understood the task definition.

Deployment via ecs-cli does not include a Load Balancer.  
Built in Monitors picked up performance data on EC2, but not Fargate ECS cluster.  

## ToDo
1. Deploy using CloudFormation only and determine if the ECS task definition is created.
2. Performance test with two EC2 instances
3. WAF / Guard Duty ??
4. Additional hardening of EC2 instances needed - look into customization of the User Data for launch config to include SSM agent as managed instances

