view: lk_suscriptor_estado_hw {
  sql_table_name: @{gcp_ambiente}.LK_SuscriptorEstadoHW` ;;
  fields_hidden_by_default: yes

  dimension: suscriptor_estado_hwsk {
    primary_key: yes
    type: number
    sql: ${TABLE}.SuscriptorEstadoHWSK ;;
  }

  dimension: suscriptor_estado_hwnombre {
    type: string
    sql: ${TABLE}.SuscriptorEstadoHWNombre ;;
  }
}