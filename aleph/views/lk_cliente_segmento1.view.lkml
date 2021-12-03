view: lk_cliente_segmento1 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ClienteSegmento1` ;;

  dimension: cliente_segmento1_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ClienteSegmento1SK ;;
  }

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.ClienteSegmento1Nombre ;;
  }
}
