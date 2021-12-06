view: lk_producto_segmento {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoSegmento` ;;
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
