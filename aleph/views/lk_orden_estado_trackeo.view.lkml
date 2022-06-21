view: lk_orden_estado_trackeo {
  sql_table_name: @{gcp_ambiente}.LK_OrdenEstadoTrackeo` ;;
  fields_hidden_by_default: yes

  dimension: orden_estado_trackeo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenEstadoTrackeoSK ;;
  }

  dimension: orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.OrdenEstadoTrackeoNombre ;;
  }
}