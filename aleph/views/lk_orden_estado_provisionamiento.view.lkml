view: lk_orden_estado_provisionamiento {
  sql_table_name: @{gcp_ambiente}.LK_OrdenEstadoProvisionamiento` ;;
  fields_hidden_by_default: yes

  dimension: orden_estado_provisionamiento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenEstadoProvisionamientoSK ;;
  }

  dimension: orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoProvisionamientoNombre ;;
  }
}