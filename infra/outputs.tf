output "alb_dns_name" {
  value = aws_lb.test_app_public.dns_name
}
