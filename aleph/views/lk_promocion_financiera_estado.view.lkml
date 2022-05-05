view: lk_promocion_financiera_estado {
  sql_table_name: @{gcp_ambiente}.LK_PromocionFinancieraEstado` ;;
  fields_hidden_by_default: yes

  dimension: promocion_financiera_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PromocionFinancieraEstadoSK ;;
  }

  dimension: promocion_financiera_estado_nombre {
    type: string
    sql: ${TABLE}.PromocionFinancieraEstadoNombre ;;
  }
}