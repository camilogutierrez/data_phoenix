view: lk_orden_item_estado_stock {
  sql_table_name: @{gcp_ambiente}.LK_OrdenItemEstadoStock` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_estado_stock_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemEstadoStockSK ;;
  }

  dimension: orden_item_estado_stock_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoStockNombre ;;
  }
}