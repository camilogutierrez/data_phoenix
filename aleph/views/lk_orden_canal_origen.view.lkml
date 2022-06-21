view: lk_orden_canal_origen {
  sql_table_name: @{gcp_ambiente}.LK_OrdenCanalOrigen` ;;
  fields_hidden_by_default: yes

  dimension: orden_canal_origen_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenCanalOrigenSK ;;
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.OrdenCanalOrigenNombre ;;
  }
}