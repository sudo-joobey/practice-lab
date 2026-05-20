resource "aws_s3_bucket" "practice_bucket" {
  bucket = "snyk-practice-lab-example-bucket"
}

resource "aws_security_group" "practice_sg" {
  name        = "practice-security-group"
  description = "Practice security group"

  ingress {
    description = "Allow SSH from anywhere for demo purposes"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
