view: lk_suscriptor_detalle_estado_hw {
  sql_table_name: @{gcp_ambiente}.LK_SuscriptorDetalleEstadoHW` ;;
  fields_hidden_by_default: yes

  dimension: suscriptor_detalle_estado_hwsk {
    primary_key: yes
    type: number
    sql: ${TABLE}.SuscriptorDetalleEstadoHWSK ;;
  }

  dimension: suscriptor_detalle_estado_hwnombre {
    type: string
    sql: ${TABLE}.SuscriptorDetalleEstadoHWNombre ;;
  }
}