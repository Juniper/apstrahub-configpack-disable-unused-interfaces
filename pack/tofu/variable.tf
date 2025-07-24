#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

variable "blueprint_id" {
  type = string
}

variable "name" {
  type = string
  default = "disableUnusedInterfaces"
}

variable "configlet_scope" {
  type = string
  default = "role in [\"leaf\", \"access\"]"
  description = "Selects devices where configlet should be applied. Example: `hostname in [\"leaf1\", \"leaf2\"]`"
}
