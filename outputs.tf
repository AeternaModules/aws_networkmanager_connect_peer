output "networkmanager_connect_peers_id" {
  description = "Map of id values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networkmanager_connect_peers_arn" {
  description = "Map of arn values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "networkmanager_connect_peers_bgp_options" {
  description = "Map of bgp_options values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.bgp_options if v.bgp_options != null && length(v.bgp_options) > 0 }
}
output "networkmanager_connect_peers_configuration" {
  description = "Map of configuration values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "networkmanager_connect_peers_connect_attachment_id" {
  description = "Map of connect_attachment_id values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.connect_attachment_id if v.connect_attachment_id != null && length(v.connect_attachment_id) > 0 }
}
output "networkmanager_connect_peers_connect_peer_id" {
  description = "Map of connect_peer_id values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.connect_peer_id if v.connect_peer_id != null && length(v.connect_peer_id) > 0 }
}
output "networkmanager_connect_peers_core_network_address" {
  description = "Map of core_network_address values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.core_network_address if v.core_network_address != null && length(v.core_network_address) > 0 }
}
output "networkmanager_connect_peers_core_network_id" {
  description = "Map of core_network_id values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.core_network_id if v.core_network_id != null && length(v.core_network_id) > 0 }
}
output "networkmanager_connect_peers_created_at" {
  description = "Map of created_at values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "networkmanager_connect_peers_edge_location" {
  description = "Map of edge_location values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.edge_location if v.edge_location != null && length(v.edge_location) > 0 }
}
output "networkmanager_connect_peers_inside_cidr_blocks" {
  description = "Map of inside_cidr_blocks values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.inside_cidr_blocks if v.inside_cidr_blocks != null && length(v.inside_cidr_blocks) > 0 }
}
output "networkmanager_connect_peers_peer_address" {
  description = "Map of peer_address values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.peer_address if v.peer_address != null && length(v.peer_address) > 0 }
}
output "networkmanager_connect_peers_state" {
  description = "Map of state values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.state if v.state != null && length(v.state) > 0 }
}
output "networkmanager_connect_peers_subnet_arn" {
  description = "Map of subnet_arn values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.subnet_arn if v.subnet_arn != null && length(v.subnet_arn) > 0 }
}
output "networkmanager_connect_peers_tags" {
  description = "Map of tags values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "networkmanager_connect_peers_tags_all" {
  description = "Map of tags_all values across all networkmanager_connect_peers, keyed the same as var.networkmanager_connect_peers"
  value       = { for k, v in aws_networkmanager_connect_peer.networkmanager_connect_peers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

