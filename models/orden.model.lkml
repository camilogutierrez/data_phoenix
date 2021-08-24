connection: "edw"

include: "/views/fth_orden.view.lkml"
include: "/views/lookups/*.view.lkml"

# Caching settings

datagroup: default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: default_datagroup

# Case sensitive en filtros

case_sensitive: no

# Explores

explore: fth_orden {
  group_label: "Phoenix"
  label: "Orden Historico"

  join: lk_orden_estado {
    relationship: many_to_one
    type: left_outer
    sql_on: ${fth_orden.orden_estado_nombre} = ${lk_orden_estado.orden_estado_nombre} ;;
  }
}
