variable "region" {
  type    = string
  default = "us-east-2"
}

# --- Demo swap knobs -------------------------------------------------------
# Each of these drives exactly one policy so you can flip a value on screen
# and watch a single guardrail react.

variable "instance_type" {
  description = "Swap to an off-list type (e.g. m5.4xlarge) to trip the instance-type policy."
  type        = string
  default     = "t3.medium"
}

variable "ssh_ingress_cidr" {
  description = "Swap to 0.0.0.0/0 to trip the world-open ingress policy."
  type        = string
  default     = "10.0.0.0/16"
}

variable "root_volume_encrypted" {
  description = "Swap to false to trip the encryption-at-rest policy."
  type        = bool
  default     = true
}

variable "common_tags" {
  description = "Remove a key to trip the required-tags policy."
  type        = map(string)
  default = {
    # Owner              = "platform-team"
    Environment        = "demo"
    DataClassification = "public"
  }
}
