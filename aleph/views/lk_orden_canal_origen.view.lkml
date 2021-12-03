view: lk_orden_canal_origen {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenCanalOrigen` ;;
  fields_hidden_by_default: yes

  dimension: orden_canal_origen_sk {
    type: number
    sql: ${TABLE}.OrdenCanalOrigenSK ;;
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenCanalOrigenNombre ;;
  }
}
