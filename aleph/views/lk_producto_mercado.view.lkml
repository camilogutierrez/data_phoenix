view: lk_producto_mercado {
  sql_table_name: @{gcp_dataset_pub}.LK_ProductoMercado` ;;
  fields_hidden_by_default: yes

  dimension: producto_mercado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoMercadoSK ;;
  }

  dimension: producto_mercado_nombre {
    type: string
    sql: ${TABLE}.ProductoMercadoNombre ;;
  }
}
