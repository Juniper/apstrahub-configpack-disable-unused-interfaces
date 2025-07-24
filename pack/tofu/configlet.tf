#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

resource "apstra_datacenter_configlet" "example" {
  blueprint_id = var.blueprint_id
  name = var.name
  condition = var.configlet_scope
  generators = [
    {
      config_style  = "junos"
      section       = "top_level_hierarchical"
      template_text = <<-EOT
        {% for if_name,if_param in interface.items() %}
          {% if if_param['role'] == 'unused' %}
        interfaces {
            {{if_param['intfName']}} {
                disable;
           }
        }
          {% endif %}
        {% endfor %}
      EOT
    },
  ]
}
