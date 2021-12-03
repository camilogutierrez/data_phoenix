view: lk_cliente_segmento2 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ClienteSegmento2` ;;

  dimension: cliente_segmento2_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ClienteSegmento2SK ;;
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento2Nombre ;;
  }
}
