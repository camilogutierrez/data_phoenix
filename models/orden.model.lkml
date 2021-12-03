connection: "edw"

include: "/views/fth_orden_old.view.lkml"
include: "/aleph/views/*.view.lkml"
include: "/dashboards/*"



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

  join: lk_orden_tipo_gestion {
    relationship: many_to_one
    type: left_outer
    sql_on: ${fth_orden.orden_tipo_gestion_nombre} = ${lk_orden_tipo_gestion.orden_tipo_gestion_nombre} ;;
  }

  join: lk_orden_item_accion {
    relationship: many_to_one
    type: left_outer
    sql_on: ${fth_orden.orden_item_accion_nombre} = ${lk_orden_item_accion.orden_item_accion_nombre} ;;
  }

  join: lk_producto_tipo {
    relationship: many_to_one
    type: left_outer
    sql_on: ${fth_orden.producto_tipo_nombre} = ${lk_producto_tipo.producto_tipo_nombre} ;;
  }
}
