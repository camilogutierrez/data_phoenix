view: lk_producto_mercado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoMercado` ;;

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
