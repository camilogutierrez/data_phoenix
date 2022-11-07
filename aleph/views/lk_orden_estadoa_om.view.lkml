view: lk_orden_estadoa_om {
  sql_table_name: @{gcp_ambiente}.LK_OrdenEstadoaOM` ;;
  fields_hidden_by_default: yes

  dimension: orden_estadoa_om_sk {
    type: number
    sql: ${TABLE}.OrdenEstadoaOMSK ;;
  }

  dimension: orden_estadoa_om_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoaOMNombre ;;
  }
}
