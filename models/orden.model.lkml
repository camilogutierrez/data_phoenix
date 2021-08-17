connection: "edw"

include: "/views/fth_orden_historico.view.lkml"

# Caching settings
datagroup: default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: default_datagroup

# Case sensitive en filtros
case_sensitive: no

explore: fth_orden_historico {
  group_label: "Phoenix"
  label: "Orden Historico"
}

#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
