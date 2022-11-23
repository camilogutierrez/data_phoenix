view: lk_promocion {
  sql_table_name: @{gcp_ambiente}.LK_Promocion`  ;;
  fields_hidden_by_default: yes

  dimension: promocion_codigo {
    type: string
    sql: ${TABLE}.PromocionCodigo ;;
  }

  dimension: promocion_nombre {
    type: string
    sql: ${TABLE}.PromocionNombre ;;
  }

  dimension: promocion_srcid {
    type: string
    sql: ${TABLE}.PromocionSRCId ;;
  }
}
