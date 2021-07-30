connection: "edw"

include: "/views/ft_orden_historico.view.lkml"

datagroup: default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: default_datagroup


explore: ft_orden_historico {
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
