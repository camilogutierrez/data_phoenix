view: lk_cliente_segmento2 {
  sql_table_name: @{gcp_ambiente}.LK_ClienteSegmento2` ;;
  fields_hidden_by_default: yes

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