output "out_random_generator" {
  description = "Random generated string."
  value       = random_string.string.result
}

output "out_random_password" {
  description = "Random generated string."
  value       = random_password.password[*].result
  sensitive   = true
}
