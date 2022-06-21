view: lk_promocion_item_tipo_accion {
  sql_table_name: @{gcp_ambiente}.LK_PromocionItemTipoAccion` ;;
  fields_hidden_by_default: yes

  dimension: promocion_item_tipo_accion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PromocionItemTipoAccionSK ;;
  }

  dimension: promocion_item_tipo_accion_nombre {
    type: string
    sql: ${TABLE}.PromocionItemTipoAccionNombre ;;
  }
}