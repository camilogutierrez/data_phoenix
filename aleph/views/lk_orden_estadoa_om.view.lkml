view: lk_orden_estadoa_om {
  sql_table_name: @{gcp_ambiente}.LK_OrdenEstadoaOM` ;;
  fields_hidden_by_default: yes

  dimension: orden_estadoa_omsk {
    type: number
    sql: ${TABLE}.OrdenEstadoaOMSK ;;
  }

  dimension: orden_estadoa_omnombre {
    type: string
    sql: ${TABLE}.OrdenEstadoaOMNombre ;;
  }
}
