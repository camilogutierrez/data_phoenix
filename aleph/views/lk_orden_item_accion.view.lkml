view: lk_orden_item_accion {
  sql_table_name: @{gcp_ambiente}.LK_OrdenItemAccion` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_accion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemAccionSK ;;
  }

  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemAccionNombre ;;
  }
}