resource "aws_ecr_repository" "ecs_app" {
  name                 = "ecs-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}