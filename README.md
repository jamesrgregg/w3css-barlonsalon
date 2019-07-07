# Deploy ECS cluster with EC2 instances

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
