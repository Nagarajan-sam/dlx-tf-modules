variable "alb_name" {
  description = "The resource name and Name tag of the load balancer."
  type        = string
  default     = "alb"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC we are being created in"
  default     = ""
}

variable "alb_subnets" {
  type        = list(string)
  description = "Array of the Subnets we should be using with ALB"
  default     = []
}

variable "alb_security_groups" {
  type        = list(string)
  description = "Array of security groups used for the load balancer"
  default     = []
}

variable "alb_target_groups" {
  type        = list(any)
  description = "The target groups config"
  default     = []
}

variable "http_tcp_listeners" {
  type        = list(any)
  description = "http_tcp_listeners configuration"
  default     = []
}

variable "http_tcp_listener_rules" {
  description = "A list of maps describing the Listener Rules for this ALB. Required key/values: actions, conditions. Optional key/values: priority, http_tcp_listener_index (default to http_tcp_listeners[count.index])"
  type        = list(any)
  default     = []
}

variable "alb_tags" {
  description = "A map of tags to add to loadbalancer and target groups"
  type        = map(string)
  default     = {}
}

variable "internal" {
  description = "A map of tags to add to loadbalancer and target groups"
  type        = bool
  default     = true
}
