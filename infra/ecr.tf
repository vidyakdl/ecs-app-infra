resource "aws_ecr_repository" "ecs_app" {
  name                 = "ecs-app"
  image_tag_mutability = "MUTABLE"
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }
}