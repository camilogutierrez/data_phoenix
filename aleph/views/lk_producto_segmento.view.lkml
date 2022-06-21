view: lk_producto_segmento {
  sql_table_name: @{gcp_ambiente}.LK_ProductoSegmento` ;;
  fields_hidden_by_default: yes

  dimension: producto_segmento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoSegmentoSK ;;
  }

  dimension: producto_segmento_nombre {
    type: string
    sql: ${TABLE}.ProductoSegmentoNombre ;;
  }
}