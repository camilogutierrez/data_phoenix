view: lk_cliente_segmento1 {
  sql_table_name: @{gcp_dataset_pub}.LK_ClienteSegmento1` ;;
  fields_hidden_by_default: yes

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
