view: lk_orden_estado {
  sql_table_name: @{gcp_ambiente}.LK_OrdenEstado` ;;
  fields_hidden_by_default: yes

  dimension: orden_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenEstadoSK ;;
  }

  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoNombre ;;
  }
}