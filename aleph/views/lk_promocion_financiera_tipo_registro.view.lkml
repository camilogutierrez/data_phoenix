view: lk_promocion_financiera_tipo_registro {
  sql_table_name: @{gcp_ambiente}.LK_PromocionFinancieraTipoRegistro` ;;
  fields_hidden_by_default: yes

  dimension: promocion_financiera_tipo_registro_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PromocionFinancieraTipoRegistroSK ;;
  }

  dimension: promocion_financiera_tipo_registro_nombre {
    type: string
    sql: ${TABLE}.PromocionFinancieraTipoRegistroNombre ;;
  }
}