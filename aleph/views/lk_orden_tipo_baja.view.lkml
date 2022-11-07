view: lk_orden_tipo_baja {
  sql_table_name: @{gcp_ambiente}.LK_OrdenTipoBaja`    ;;
  fields_hidden_by_default: yes

  dimension: orden_tipo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoBajaNombre ;;
  }

  dimension: orden_tipo_baja_sk {
    type: number
    sql: ${TABLE}.OrdenTipoBajaSK ;;
  }
}
